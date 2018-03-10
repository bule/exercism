class Gigasecond
  class << self
    GIGASECOND = 1_000_000_000

    def from(time)
      time + GIGASECOND
    end
  end
end

module BookKeeping
  VERSION = 6
end
