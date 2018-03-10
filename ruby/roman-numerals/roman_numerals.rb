class Integer
  def to_roman
    result        = ''
    splitted      = self.to_s.split('').map(&:to_i)
    splitted_size = splitted.size
    splitted.each_with_index do |digit, index|
      next if digit == 0
      case (splitted_size - index)
      when 4 then
        result << 'M' * digit
      when 3 then
        result << 'C' * digit if digit < 4
        result << 'CD' if digit == 4
        result << 'D' if digit == 5
        result << "D#{'C' * (digit - 5)}" if (6..8).cover?(digit)
        result << 'CM' if digit == 9
      when 2 then
        result << 'X' * digit if digit < 4
        result << 'XL' if digit == 4
        result << 'L' if digit == 5
        result << "L#{'X' * (digit - 5)}" if (6..8).cover?(digit)
        result << 'XC' if digit == 9
      when 1 then
        result << 'I' * digit if digit < 4
        result << 'IV' if digit == 4
        result << 'V' if digit == 5
        result << "V#{'I' * (digit - 5)}" if (6..8).cover?(digit)
        result << 'IX' if digit == 9
      end
    end
    result
  end
end

module BookKeeping
  VERSION = 2
end
