# frozen_string_literal: true

# borrowed from http://titusd.co.uk/2010/01/31/regular-expressions-in-sqlite/
module SQLite3ARRegexp
  module Extension
    extend ActiveSupport::Concern

    included do
      alias_method :old_initialize, :initialize
      private :old_initialize

      def initialize(*args)
        old_initialize(*args)

        raw_connection.create_function('regexp', 2) do |func, pattern, expression|
          func.result = expression.to_s.match(Regexp.new(pattern.to_s, Regexp::IGNORECASE)) ? 1 : 0
        end
      end
    end
  end
end
