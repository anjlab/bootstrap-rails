#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rake/testtask'

namespace :twitter do

  desc "Pulls Twitter's Bootstrap Scss"
  task :pull do
    if !system "cd bootstrap && git pull"
      abort "...."
    end
  end

  BS_FONTS     = FileList["bootstrap/fonts/*.*"]
  ASSETS_FONTS = BS_FONTS.pathmap("vendor/assets/fonts/twitter/%f")
  ASSETS_FONTS.zip(BS_FONTS).each do |target, source|
    file target => [source] { cp source, target, verbose: true }
  end

  BS_JS     = FileList["bootstrap/js/*.*"]
  ASSETS_JS = BS_JS.pathmap("vendor/assets/javascripts/twitter/bootstrap/%f")
  ASSETS_JS.zip(BS_JS).each do |target, source|
    file target => [source] { cp source, target, verbose: true }
  end

  BS_SCSS = FileList["bootstrap/scss/*.*"]
  ASSETS_SCSS = BS_SCSS.pathmap("vendor/assets/stylesheets/twitter/bootstrap/_%f")
  ASSETS_SCSS.zip(BS_SCSS).each do |target, source|
    target.gsub!(/__/, '_')
    file target => [source] { cp source, target, verbose: true }
  end

  desc "Update Twitter's Bootstrap Fonts"
  task :fonts => ASSETS_FONTS

  desc "Update Twitter's Bootstrap JS"
  task :js => ASSETS_JS do
    js = {}
    ASSETS_JS.pathmap("%f").each { |f| js[f] = 1 }

    # dependencies
    order = %w{transition.js alert.js button.js carousel.js collapse.js dropdown.js modal.js tooltip.js popover.js scrollspy.js tab.js affix.js}
    order.each_with_index {|o, i| js[o] = i }

    list = js.to_a.sort {|a,b| a[1] <=> b[1]}.map{|p| p[0]}
    File.write "vendor/assets/javascripts/twitter/bootstrap.js", list.map {|f| "//= require twitter/bootstrap/#{f}"}.join("\n")
  end

  desc "Update Twitter's Bootstrap SCSS"
  task :scss => ASSETS_SCSS do
    File.write "vendor/assets/stylesheets/twitter/bootstrap.scss", '@import "twitter/bootstrap/bootstrap";'
  end

  desc "Update Twitter's icons"
  task :icons do
    vars_path = 'vendor/assets/stylesheets/twitter/bootstrap/_variables.scss'
    variables = File.read vars_path
    variables.sub!(/^\$glyphicons-font-path:\s+".*"\s!default;/, "$glyphicons-font-path:          \"twitter\" !default;")
    File.write(vars_path, variables)

    glyphicons_path  = 'vendor/assets/stylesheets/twitter/bootstrap/_glyphicons.scss'
    glyphicons = File.read glyphicons_path
    glyphicons.gsub!(/url\('\#{\$glyphicons-font-path\}\//, "font-url('\#{$glyphicons-font-path}/")
    File.write(glyphicons_path, glyphicons)
  end

  desc "Clean vendored files"
  task :clean do
    FileUtils.rm_rf 'vendor/assets'
    FileUtils.mkpath 'vendor/assets/fonts/twitter'
    FileUtils.mkpath 'vendor/assets/javascripts/twitter/bootstrap'
    FileUtils.mkpath 'vendor/assets/stylesheets/twitter/bootstrap'
  end

  desc "Update Twitter's Bootstrap Assets"
  task :assets => [:pull, :clean, :fonts, :scss, :js, :icons]

end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
