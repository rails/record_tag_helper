# frozen_string_literal: true

source "https://rubygems.org"

if RUBY_VERSION < '2.3'
  gem 'i18n', '< 1.5'
  gem 'nokogiri', '< 1.10'
else
  gem 'i18n'
  gem 'nokogiri'
end

gemspec

if ENV['ACTIONVIEW_VERSION']
  gem 'actionview', "~> #{ENV['ACTIONVIEW_VERSION']}.0"
else
  gem 'actionview'
end

gem 'rubocop', '~> 0.68.0'
