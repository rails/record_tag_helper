# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'record_tag_helper/version'

Gem::Specification.new do |spec|
  spec.name        = 'record_tag_helper'
  spec.version     = RecordTagHelper::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.summary     = %q(ActionView Record Tag Helpers)
  spec.email       = 'david@loudthinking.com'
  spec.homepage    = %q(https://github.com/rails/record_tag_helper)
  spec.description = spec.summary
  spec.author      = 'David Heinemeier Hansson'
  spec.license     = 'MIT'

  spec.required_ruby_version = '>= 2.2.0'

  spec.files = Dir['CHANGELOG.md', 'LICENSE', 'README.md', 'lib/**/*']

  spec.add_dependency 'rails', '~> 5.0.0.alpha'
end
