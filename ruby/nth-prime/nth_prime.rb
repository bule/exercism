class Prime
  def self.nth(number)
    raise ArgumentError if number == 0
    return 2 if number == 1
    result = [2]
    index  = 2
    while true do
      index += 1
      result << index unless result.any? { |r| index % r == 0 }
      break if result.size == number
    end
    result.last
  end
end

module BookKeeping
  VERSION = 1
end
