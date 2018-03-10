class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    return [] if number < 2
    return [2] if number < 3
    result = [2]
    (3..number).each do |n|
      result << n unless result.any? { |r| n % r == 0 }
    end
    result
  end
end

module BookKeeping
  VERSION = 1
end
