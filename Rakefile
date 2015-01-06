# encoding: UTF-8

require 'bundler/gem_tasks'

require 'rake/testtask'
require 'rdoc/task'
require File.join(File.dirname(__FILE__), 'lib', 'record_tag_helper', 'version')

desc 'Default: run unit tests'
task :default => :test

desc 'Test RecordTagHelper'
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for RecordTagHelper'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'RecordTagHelper'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('lib/**/*.rb')
end
