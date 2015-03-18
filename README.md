# SQLite3 ActiveRecord REGEXP

<a href="https://rubygems.org/gems/sqlite3_ar_regexp">
  <img alt="" src="https://img.shields.io/gem/v/sqlite3_ar_regexp.svg">
</a>
<a href="https://travis-ci.org/AaronLasseigne/sqlite3_ar_regexp">
  <img alt="" src="https://img.shields.io/travis/orgsync/sqlite3_ar_regexp/master.svg">
</a>

This adds REGEXP support to SQLite3 in ActiveRecord.

This project uses [Semantic Versioning](http://semver.org).

## Installation

Add this line to your application's Gemfile:

    gem 'sqlite3_ar_regexp', '~> 2.1'

And then execute:

    $ bundle

Or install it yourself as: 

    $ gem install sqlite3_ar_regexp

## Usage

    # find all accounts where the first name starts with "a"
    Account.where('first_name REGEXP "^a"')

## Credits
The original code for this was done by Joe Yates.
