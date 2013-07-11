# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sqlite3_ar_regexp/version'

Gem::Specification.new do |spec|
  spec.name        = 'sqlite3_ar_regexp'
  spec.version     = SQLite3ARRegexp::VERSION

  spec.authors     = ['Aaron Lasseigne']
  spec.email       = ['aaron.lasseigne@gmail.com']

  spec.summary     = %q{Adds REGEXP support for SQLite3 in ActiveRecord.}
  spec.description = spec.summary
  spec.homepage    = 'https://github.com/AaronLasseigne/sqlite3_ar_regexp'
  spec.license     = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.add_dependency 'sqlite3'
  spec.add_dependency 'activerecord', '>= 3.2'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
