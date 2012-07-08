module UnitFramework
  class Case

    include Asserts

    def initialize(reporter)
      @reporter = reporter
      @method = nil
    end

    def execute(method)
      @method = method

      setup
      send method
      teardown

      @method = nil
    rescue AssertError => e
      @reporter.add_failure(@method, e.message)
    rescue RuntimeError
      @reporter.add_error(@method)
    end

    private

      def setup
        # template method
      end

      def teardown
        # template method
      end

      def report(result, message)
        raise AssertError.new(message) unless result
        @reporter.add_assert(@method)
      end
  end
end
