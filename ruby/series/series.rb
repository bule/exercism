class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(number)
    raise ArgumentError if number > string_size
    slice_enum(number).map { |index| string.slice(slice_range(index, number)) }
  end

  private

  def slice_enum(number)
    (0..(string_size - number))
  end

  def slice_range(index, number)
    index..(index - string_size + number - 1)
  end

  def string_size
    string.size
  end
end
