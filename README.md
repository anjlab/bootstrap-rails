# Twitter Bootstrap v2 for Rails 3
Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.
It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.



anjlab-bootstrap-rails project integrates Bootstrap CSS (with SASS flavour) and JS toolkits for Rails 3 projects

## Rails > 3.1
Include Bootstrap in Gemfile;

``` ruby
gem 'anjlab-bootstrap-rails', '>= 2.0', :require => 'bootstrap-rails'
```

or you can install from latest build;

``` ruby
gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails',
                              :git => 'git://github.com/anjlab/bootstrap-rails.git'
```

and run bundle install.

## Stylesheets

Add necessary stylesheet file to app/assets/stylesheets/application.css

``` css
*= require bootstrap
```

You can override boostrapr variables:

```scss
// Create app/assets/stylesheets/bootstrap.scss
// Core variables and mixins
@import "variables.scss"; // Modify this for custom colors, font-sizes, etc


// Override variabels here
$linkColor: red; // Make all links red

@import "mixins.scss";

// CSS Reset
@import "reset.scss";

// Grid system and page structure
@import "scaffolding.scss";
@import "grid.scss";
@import "layouts.scss";

// Base CSS
@import "type.scss";
@import "code.scss";
@import "forms.scss";
@import "tables.scss";

// Components: common
@import "sprites.scss";
@import "dropdowns.scss";
@import "wells.scss";
@import "component-animations.scss";
@import "close.scss";

// Components: Buttons & Alerts
@import "buttons.scss";
@import "button-groups.scss";
@import "alerts.scss"; // Note: alerts share common CSS with buttons and thus have styles in buttons.scss

// Components: Nav
@import "navs.scss";
@import "navbar.scss";
@import "breadcrumbs.scss";
@import "pagination.scss";
@import "pager.scss";

// Components: Popovers
@import "modals.scss";
@import "tooltip.scss";
@import "popovers.scss";

// Components: Misc
@import "thumbnails.scss";
@import "labels.scss";
@import "progress-bars.scss";
@import "accordion.scss";
@import "carousel.scss";
@import "hero-unit.scss";

// Utility classes
@import "utilities.scss"; // Has to be last to override when necessary
```

## Javascripts

Add necessary javascript(s) files to app/assets/javascripts/application.js

``` javascript
// Include all twitter's javascripts
//= require bootstrap

// Or peek any of them yourself
//= require bootstrap-transition
//= require bootstrap-alert
//= require bootstrap-modal
//= require bootstrap-dropdown
//= require bootstrap-scrollspy
//= require bootstrap-tab
//= require bootstrap-tooltip
//= require bootstrap-popover
//= require bootstrap-button
//= require bootstrap-collapse
//= require bootstrap-carousel
//= require bootstrap-typeahead
```

## Upgrade notes from 1.4

 - [Twitter Bootstrap Upgrade](http://twitter.github.com/bootstrap/upgrading.html)
 - rm -rf tmp/cache
        
## Thanks
Thanks Twitter for Bootstrap
http://twitter.github.com/bootstrap

Inspired by Seyhun Akyürek and his [twitter-bootstrap-rails gem](https://github.com/seyhunak/twitter-bootstrap-rails)

## License
Copyright (c) 2011 AnjLab

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
