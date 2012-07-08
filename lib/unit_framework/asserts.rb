module UnitFramework
  module Asserts
    def assert(value, message = 'wrong')
      report(!!value, message)
    end
  end
end
