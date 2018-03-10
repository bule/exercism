class Pangram
  def self.pangram?(phrase)
    phrase.gsub(/[\s|'_'|\d|'.'|'"']/, '').downcase.split('').uniq.sort.join == 'abcdefghijklmnopqrstuvwxyz'
  end
end

module BookKeeping
  VERSION = 6
end
