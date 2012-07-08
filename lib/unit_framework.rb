require "unit_framework/version"

module UnitFramework
  autoload :Case, 'unit_framework/case'
  autoload :Asserts, 'unit_framework/asserts'
  autoload :Reporter, 'unit_framework/reporter'
  autoload :Runner, 'unit_framework/runner'

  class BaseError < RuntimeError; end;
  class AssertError < BaseError; end;
end
