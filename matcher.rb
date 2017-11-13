class Matcher
  def initialize(original_value)
    @original_value = original_value
  end

  def to(expected_value:, operation:)
    check_comparability!(operation)
    compare!(expected_value, operation)
  end

  private

  def check_comparability!(operation)
    unless @original_value.respond_to?(operation)
      raise ArgumentError, 'Error!, Not comparable value'
    end
  end

  def compare!(expected_value, operation)
    match = "#{@original_value} #{operation.to_s} #{expected_value}"

    unless @original_value.public_send(operation, expected_value)
      raise MatcherError, match
    end

    "Successful match!: #{match}"
  end
end

class MatcherError < StandardError
  def initialize(match)
    @match = match
    super
  end

  def message
    "Requested match has failed. #{@match}"
  end
end
