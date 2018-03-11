class PrimeFactors
  require 'prime'

  def self.for(number)
    result = []
    fact   = number
    2.upto(number).each do |index|
      break if fact < index
      next unless index.prime?
      while (fact % index).zero?
        fact /= index
        result << index
      end
    end
    result
  end
end
