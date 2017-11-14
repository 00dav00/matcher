require_relative 'test'

test = Test.new

test.run_without_errors
test.run_with_wrong_value_to_compare
test.run_with_wrong_operation
test.run_with_expectation_errors
