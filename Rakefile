#!/usr/bin/env rake
require "bundler/gem_tasks"

namespace :twitter do

  desc "Pulls Twitter's Bootstrap Scss"
  task :pull do
    if !system "git pull -s subtree twitter twb2"
      abort "Have to add twitter scss remote `git remote add -f twitter git@github.com:yury/bootstrap.git`"
    end
  end

  desc "Update Twitter's Bootstrap Assets"
  task :update => :pull do

    Dir["vendor/twitter/img/*.*"].each do |file|
      cp file, "vendor/assets/images/", :verbose => true
    end

    Dir["vendor/assets/stylesheets/*.*"].each {|f| FileUtils.rm(f)}
    Dir["vendor/twitter/scss/*.scss"].each do |file|
      cp file, "vendor/assets/stylesheets/", :verbose => true
    end

    Dir["vendor/assets/javascripts/*.*"].each {|f| FileUtils.rm(f)}
    js_files = Dir["vendor/twitter/js/*.js"].map()
    js_files.each do |file|
      cp file, "vendor/assets/javascripts/", :verbose => true
    end

    js_priorities = {}
    js_files.each {|f| js_priorities[File.basename(f)] = 1}

    # dependencies
    js_priorities["bootstrap-transition.js"]  = 0
    js_priorities["bootstrap-tooltip.js"]     = 2
    js_priorities["bootstrap-popover.js"]     = 3
    
    js_list = js_priorities.to_a.sort {|a,b| a[1] <=> b[1]}.map{|p| p[0]}
    
    File.open("vendor/assets/javascripts/bootstrap.js", "w") do |f|
      js_list.each do |js|
        f.write "//= require #{js}\n"
      end
    end
  end
  
end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
