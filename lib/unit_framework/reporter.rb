module UnitFramework
  class Reporter
    def initialize()
      @errors = {}
      @falures = {}

      @asserts_count = 0
      @errors_count = 0
      @falures_count = 0
    end
    def add_assert(method)
      @asserts_count += 1
    end

    def add_failure(method, message)
      @falures_count += 1
    end

    def add_error(method, exception)
      @errors_count += 1
    end

    def finish
      puts "\n"
      puts "asserts: #{@asserts_count} falures: #{@falures_count} errors: #{@errors_count}"
    end
  end
end
