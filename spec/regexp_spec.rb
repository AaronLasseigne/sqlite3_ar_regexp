# frozen_string_literal: true

require 'sqlite3_ar_regexp'

describe 'SQLite3ARRegexp::Extension' do
  before(:all) do
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: 'spec/test.sqlite3'
    )

    NobelPrizeWinner = Class.new(ActiveRecord::Base)
  end

  it 'adds "REGEXP" support for ActiveRecord::ConnectionAdapters::SQLite3Adapter' do
    expect(NobelPrizeWinner.where('first_name REGEXP "al|ma"').count).to eql 3
  end
end
