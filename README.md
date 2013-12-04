# Bootstrap v3.0.2 for Rails 3/4
Bootstrap is a toolkit originated at Twitter that's designed to kickstart development of webapps and sites.
It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.

Note: if you are looking for bootstrapped date and time pickers please take a look at [anjlab-widgets](https://github.com/anjlab/anjlab-widgets) gem.

anjlab-bootstrap-rails project integrates Bootstrap CSS (with Sass flavour) and JS toolkits for Rails 3/4 projects


## Rails > 3.1

In your Gemfile
``` ruby
gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails',
                              :github => 'anjlab/bootstrap-rails'
```

You can install from latest build via git

``` ruby

gem 'anjlab-bootstrap-rails', '~> 3.0.2.0', :require => 'bootstrap-rails'
```

and run bundle install.

## Stylesheets

1. Rename application.css to application.css.scss
2. Import bootstrap `@import "twitter/bootstrap";`
3. You can override vars above `@import "twitter/bootstrap";`

```scss

// change colors
$link-color: red;

// import original bootstrap
@import "twitter/bootstrap";

```
 NOTE: restart `pow` if you are using it.

## Javascripts

Add necessary javascript(s) files to app/assets/javascripts/application.js

``` javascript
// Include all bootstrap javascripts
//= require twitter/bootstrap

// Or peek any of them yourself
//= require twitter/bootstrap/transition
//= require twitter/bootstrap/alert
//= require twitter/bootstrap/modal
//= require twitter/bootstrap/dropdown
//= require twitter/bootstrap/scrollspy
//= require twitter/bootstrap/tab
//= require twitter/bootstrap/tooltip
//= require twitter/bootstrap/popover
//= require twitter/bootstrap/button
//= require twitter/bootstrap/collapse
//= require twitter/bootstrap/carousel
//= require twitter/bootstrap/affix
```

## Extending

- [Example of grid shortcuts and medium column classes](https://gist.github.com/yury/5662144)

## Thanks
Thanks Twitter for Bootstrap
http://getbootstrap.com

Inspired by Seyhun Akyürek and his [twitter-bootstrap-rails gem](https://github.com/seyhunak/twitter-bootstrap-rails)


## License
Copyright (c) 2013 AnjLab

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
