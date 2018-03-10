class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase.split(/[\s,]/).each_with_object(Hash.new(0)) do |word, hash|
      word = word.downcase.gsub(/[^0-9A-Za-z']/, '').sub(/^'/, '').sub(/'$/, '')
      hash[word] += 1 if word != ''
    end
  end
end

module BookKeeping
  VERSION = 1
end
