class Complement
  def self.of_dna(strand)
    strand.split('').map do |s|
      case s
      when 'C' then 'G'
      when 'G' then 'C'
      when 'T' then 'A'
      when 'A' then 'U'
      else
        return ''
      end
    end.join
  end
end

module BookKeeping
  VERSION = 4
end
