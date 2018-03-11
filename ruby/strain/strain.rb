class Array
  def keep(negate = false)
    map { |item| item if yield(item) ^ negate }.compact
  end

  def discard(&block)
    keep(_negate = true, &block)
  end
end
