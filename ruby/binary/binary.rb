class Binary
  def self.to_decimal(bin)
    result = 0
    bin    = bin.sub(/^0*/, '')
    bin.split('').reverse.each_with_index do |char, index|
      raise ArgumentError unless %w(0 1).include?(char)
      result += char.to_i * 2 ** index
    end
    result
  end
end

module BookKeeping
  VERSION = 3
end
