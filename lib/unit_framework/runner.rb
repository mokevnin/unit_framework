module UnitFramework
  class Runner
    def initialize(classes)
      @classes = classes
    end

    def run
      reporter = Reporter.new
      @classes.each do |c|
        test_case = c.new(reporter)
        test_case.methods.grep(/test_/).each do |test_method|
          puts '.'
          test_case.execute test_method
        end
      end

      reporter
    end

  end
end
