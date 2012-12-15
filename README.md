## csstrashman.com

A simple web interface for the [CSS
Ratiocinator](https://github.com/begriffs/css-ratiocinator).  Allows
you to refactor CSS for your site, compare the changes, and download
a new stylesheet.

## Running

This app requires a vendored PhantomJS on Heroku, so you'll need to
enable multiple buildpacks. Before pushing to a new Heroku instance,
run this:

    heroku config:add BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
