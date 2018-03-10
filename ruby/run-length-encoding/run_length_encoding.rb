class RunLengthEncoding
  def self.encode(input)
    output       = ''
    current_char = nil
    count        = nil
    input.each_char do |char|
      if current_char == char
        count += 1
      else
        output       += add(count, current_char)
        current_char = char
        count        = 1
      end
    end
    output + add(count, current_char)
  end

  def self.decode(input)
    output = ''
    count  = nil
    input.each_char do |char|
      if char.match?(/\d/)
        count = count ? count * 10 + char.to_i : char.to_i
      else
        output += char * (count || 1)
        count  = nil
      end
    end
    output
  end

  private

  def self.add(count, current_char)
    return "#{count}#{current_char}" if count.to_i > 1
    return current_char if count.to_i == 1
    ''
  end
end

module BookKeeping
  VERSION = 3
end
