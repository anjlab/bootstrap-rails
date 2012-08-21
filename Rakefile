#!/usr/bin/env rake
require "bundler/gem_tasks"

namespace :twitter do

  desc "Pulls Twitter's Bootstrap Scss"
  task :pull do
    if !system "git pull -s subtree twitter twb2"
      abort "Have to add twitter scss remote `git remote add -f twitter git@github.com:yury/bootstrap.git`"
    end
  end


  TW_IMGS = FileList["vendor/twitter/img/*.*"]
  ASSETS_IMGS = TW_IMGS.pathmap("vendor/assets/images/twitter/%f")
  ASSETS_IMGS.zip(TW_IMGS).each do |target, source|
    file target => [source] { cp source, target, verbose: true }
  end

  TW_JS     = FileList["vendor/twitter/js/*.*"]
  ASSETS_JS = TW_JS.pathmap("vendor/assets/javascripts/twitter/bootstrap/%{bootstrap-,}f")
  ASSETS_JS.zip(TW_JS).each do |target, source|
    file target => [source] { cp source, target, verbose: true }
  end

  TW_SCSS = FileList["vendor/twitter/scss/*.*"]
  ASSETS_SCSS = TW_SCSS.pathmap("vendor/frameworks/twitter/bootstrap/%f")
  ASSETS_SCSS.zip(TW_SCSS).each do |target, source|
    file target => [source] { cp source, target, verbose: true }
  end

  desc "Update Twitter's Bootstrap Images"
  task :imgs => ASSETS_IMGS

  desc "Update Twitter's Bootstrap JS"
  task :js => ASSETS_JS do
    js = {}
    ASSETS_JS.pathmap("%f").each do |f|
      js[f] = 1
    end

    # dependencies
    js["transition.js"]  = 0
    js["tooltip.js"]     = 2
    js["popover.js"]     = 3
    
    list = js.to_a.sort {|a,b| a[1] <=> b[1]}.map{|p| p[0]}
    File.write "vendor/assets/javascripts/twitter/bootstrap.js", list.map {|f| "//= require #{f}"}.join("\n")
  end

  desc "Update Twitter's Bootstrap SCSS"
  task :scss => ASSETS_SCSS do
    File.write "vendor/frameworks/twitter/bootstrap.scss", '@import "bootstrap/bootstrap.scss";'
    File.write "vendor/assets/stylesheets/twitter/bootstrap.scss", '@import "twitter/bootstrap/bootstrap.scss";'
    File.write "vendor/assets/stylesheets/twitter/bootstrap-responsive.scss", '@import "twitter/bootstrap/responsive.scss";'
  end

  desc "Update Twitter's Bootstrap Assets"
  task :assets => [:pull, :imgs, :scss, :js]
  
end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
