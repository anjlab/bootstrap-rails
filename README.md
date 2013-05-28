# Twitter Bootstrap v3.0.0.alpha1 for Rails 3/4
Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.
It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.

Note: if you are looking for bootstrapped date and time pickers please take a look at [anjlab-widgets](https://github.com/anjlab/anjlab-widgets) gem.

anjlab-bootstrap-rails project integrates Bootstrap CSS (with Sass flavour) and JS toolkits for Rails 3 projects

<a href="http://spellhub.com/projects/project/69"><img src="http://spellhub.com/projects/status/69" height="18"></a>

## Rails > 3.1
You can install from latest build just for testing right now;

``` ruby
gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails',
                              :git => 'git://github.com/anjlab/bootstrap-rails.git',
                              :branch => '3.0.0'
```

and run bundle install.

## Stylesheets

Add necessary stylesheet file to app/assets/stylesheets/application.css

``` css
*= require twitter/bootstrap
```

You can override bootstrap variables:

1. rename application.css to application.css.scss
2. override vars above `@import "twitter/bootstrap";`

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
// Include all twitter's javascripts
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
//= require twitter/bootstrap/typeahead
//= require twitter/bootstrap/affix
```

## Extending

- [Example of grid shortcuts and medium column classes](https://gist.github.com/yury/5662144)

## Thanks
Thanks Twitter for Bootstrap
http://twitter.github.com/bootstrap

Inspired by Seyhun Akyürek and his [twitter-bootstrap-rails gem](https://github.com/seyhunak/twitter-bootstrap-rails)


## License
Copyright (c) 2013 AnjLab

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
