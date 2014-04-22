# gulp-check
> Gulp plugin to check for illegal expressions

## Usage

Install `gulp-check` as a development dependency
```shell
npm install gulp-replace -D
```

Add it to your `gulpfile`
```javascript
var check = require('gulp-check');
var util = require('gulp-util');

gulp.task('check', function () {
  gulp.src(['test/**/*.js'])
    .pipe(check(/TODO/))
    .on('error', function (err) {
      util.beep();
      util.log(util.colors.red(err));
    });
});
```

## API
`gulp-check` can be called with a `String` or `RegExp`

### check(string)
#### string
Type: `String`
The string to search for.

### check(regex)
#### regex
Type: `RegExp`
The regex pattern to search for. See the [MDN documentation for RegExp](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp) for details.

This plugin will throw errors on the file stream and it is up to you to handle them. The first error found will stop the stream showing you what was found and what file it was found in.

If you want the plugin to find all errors without stopping the stream, use `gulp-plumber`