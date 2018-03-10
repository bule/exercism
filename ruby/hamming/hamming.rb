class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.size != strand2.size
    distance = strand1.size - strand2.size
    (distance..strand1.size).each do |index|
      distance += 1 if strand1[index] != strand2[index]
    end
    distance
  end
end

module BookKeeping
  VERSION = 3
end
