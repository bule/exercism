class SumOfMultiples
  attr_reader :args

  def initialize(*args)
    @args = args
  end

  def to(number)
    multiples = []
    args.each do |arg|
      multiple_arg = arg
      while multiple_arg < number do
        multiples << multiple_arg
        multiple_arg += arg
      end
    end
    multiples.uniq.sum
  end
end

module BookKeeping
  VERSION = 2
end
