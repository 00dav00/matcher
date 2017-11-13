require_relative 'test_helpers'

class Test
  include TestHelpers

  def run_without_errors
    puts expect(1).to be_eq(1)
    puts expect(5).to be_greater_than(2)
  end

  def run_with_syntax_errors
    puts expect(nil).to be_greater_than(1)
  rescue ArgumentError => e
    p e.message
  end

  def run_with_expectation_errors
    puts expect(1).to be_greater_than(1)
  rescue MatcherError => e
    p e.message
  end
end
