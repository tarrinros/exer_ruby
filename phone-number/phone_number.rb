class PhoneNumber
  def self.clean(phone)
    new(phone).clean
  end

  def initialize(phone)
    @phone = phone
  end

  private

  attr_reader :phone

  def clean

  end
end