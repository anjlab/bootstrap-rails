#!/usr/bin/env rake
require "bundler/gem_tasks"

desc "Update Twitter's Bootstrap"
task "update-twitter" do

  Dir["vendor/twitter/img/*.*"].each do |file|
    cp file, "vendor/assets/images/", :verbose => true
  end

  Dir["vendor/assets/stylesheets/*.*"].each {|f| FileUtils.rm(f)}
  Dir["vendor/twitter/scss/*.scss"].each do |file|
    cp file, "vendor/assets/stylesheets/", :verbose => true
  end
  bootstrap_scss = File.read("vendor/assets/stylesheets/bootstrap.scss")

  File.open("vendor/assets/stylesheets/bootstrap.scss", "w") do |f|
    f.write(bootstrap_scss)
  end

  Dir["vendor/assets/javascripts/*.*"].each {|f| FileUtils.rm(f)}
  js_files = Dir["vendor/twitter/js/*.js"].map()
  js_files.each do |file|
    cp file, "vendor/assets/javascripts/", :verbose => true
  end

  js_priorities = {}
  js_files.each {|f| js_priorities[File.basename(f)] = 0}

  # popover depend on twipsy
  js_priorities["bootstrap-twipsy.js"]  = 1
  js_priorities["bootstrap-popover.js"] = 2
  
  js_list = js_priorities.to_a.sort {|a,b| a[1] <=> b[1]}.map{|p| p[0]}
  
  File.open("vendor/assets/javascripts/bootstrap.js", "w") do |f|
    js_list.each do |js|
      f.write "//= require #{js}\n"
    end
  end
end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
