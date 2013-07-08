# borrowed from http://titusd.co.uk/2010/01/31/regular-expressions-in-sqlite/

module SQLite3ARRegexp
  module Extension
    extend ActiveSupport::Concern

    included do
      old_initialize = instance_method(:initialize)
      define_method(:initialize) do |*args|
        old_initialize.bind(self).call(*args)
        db = args.first

        db.create_function('regexp', 2) do |func, pattern, expression|
          func.result = expression.to_s.match(Regexp.new(pattern.to_s, Regexp::IGNORECASE)) ? 1 : 0
        end
      end 
    end 
  end
end
