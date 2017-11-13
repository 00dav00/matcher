require_relative 'test'

test = Test.new

test.run_without_errors
test.run_with_syntax_errors
test.run_with_expectation_errors
