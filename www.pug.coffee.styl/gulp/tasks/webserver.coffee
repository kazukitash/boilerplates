gulp      = require 'gulp'
webserver = require 'gulp-webserver'
current   = process.cwd()
dist      = current + '/dist'

gulp.task 'webserver', ['build'], ->
  gulp
    .src dist
    .pipe webserver
      open: true
      livereload:
        enable: true
