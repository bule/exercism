class PhoneNumber
  def self.clean(phone_number)
    phone_number.gsub!(/^\+?1/, '')
    phone_number.gsub!(/[\s\.\(\)-]/, '')
    phone_number if phone_number.match?(/^([2-9]\d{2}){2}\d{4}$/)
  end
end

module BookKeeping
  VERSION = 2
end
