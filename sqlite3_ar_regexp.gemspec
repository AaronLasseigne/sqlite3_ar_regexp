# frozen_string_literal: true

require_relative 'lib/sqlite3_ar_regexp/version'

Gem::Specification.new do |spec|
  spec.name        = 'sqlite3_ar_regexp'
  spec.version     = SQLite3ARRegexp::VERSION
  spec.license     = 'MIT'

  spec.authors     = ['Aaron Lasseigne']
  spec.email       = ['aaron.lasseigne@gmail.com']

  spec.summary     = 'Adds REGEXP support for SQLite3 in ActiveRecord.'
  spec.description = spec.summary
  spec.homepage    = 'https://github.com/AaronLasseigne/sqlite3_ar_regexp'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files =
    %w[CHANGELOG.md LICENSE.md README.md] +
    Dir.glob(File.join('lib', '**', '*.rb'))
  spec.test_files = Dir.glob(File.join('spec', '**', '*.rb'))

  spec.required_ruby_version = '>= 3.0'

  spec.add_dependency 'activerecord', '>= 6.0'
  spec.add_dependency 'sqlite3', '>= 1.4'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
