# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sqlite3_ar_regexp/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'sqlite3_ar_regexp'
  gem.version     = SQLite3ARRegexp::VERSION

  gem.authors     = ['Aaron Lasseigne']
  gem.email       = ['aaron.lasseigne@gmail.com']
  gem.summary     = %q{Adds REGEXP support for SQLite3 in ActiveRecord.}
  gem.description = %q{Adds REGEXP support for SQLite3 in ActiveRecord.}
  gem.homepage    = 'https://github.com/AaronLasseigne/sqlite3_ar_regexp'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency 'sqlite3'
  gem.add_dependency 'activerecord', '~> 3.0'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
