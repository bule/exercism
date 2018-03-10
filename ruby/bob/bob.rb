class Bob
  def self.hey(remark)
    return 'Whoa, chill out!' if remark.upcase == remark && remark.match(/[a-zA-Z]+/)
    return 'Sure.' if remark.match?(/\?\s*\Z/)
    return 'Whatever.' if remark =~ /[a-zA-Z0-9]+/
    'Fine. Be that way!'
  end
end

module BookKeeping
  VERSION = 1
end
