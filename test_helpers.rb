require_relative 'matcher'

module TestHelpers
  def expect(value)
    Matcher.new(value)
  end

  def be_eq(expected_value)
    { expected_value: expected_value, operation: :== }
  end

  def be_greater_than(expected_value)
    { expected_value: expected_value, operation: :> }
  end
end
