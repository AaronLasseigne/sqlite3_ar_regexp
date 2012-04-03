# SQLite3 ActiveRecord REGEXP

This adds REGEXP support to SQLite3 in ActiveRecord.

## Installation

Add this line to your application's Gemfile:

    gem 'sqlite3_ar_regexp'

And then execute:

    $ bundle

Or install it yourself as: 

    $ gem install sqlite3_ar_regexp

## Usage

    # find all accounts where the first name starts with "a"
    Account.where('first_name REGEXP "^a"')

## Credits
The original code for this was done by Joe Yates and can be found at http://titusd.co.uk/2010/01/31/regular-expressions-in-sqlite/.
