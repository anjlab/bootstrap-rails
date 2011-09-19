# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bootstrap-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yury Korolev"]
  gem.email         = ["yury.korolev@gmail.com"]
  gem.description   = %q{Twitter Bootstrap CSS (with SASS flavour) and JS toolkits for Rails 3 projects}
  gem.summary       = %q{Bootstrap CSS (with SASS flavour) and JS toolkits for Rails 3 projects}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.files.reject! { |fn| fn.include? "vendor/twitter" } 
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "anjlab-bootstrap-rails"
  gem.require_paths = ["lib"]
  gem.version       = Bootstrap::Rails::VERSION

  gem.add_dependency "railties", "~> 3.0"
  gem.add_dependency "thor",     "~> 0.14"
  gem.add_development_dependency "bundler", "=> 1.0.0"
  gem.add_development_dependency "rails",   "~> 3.0"
end
