class PhoneNumber
  CODE_PATTERN = /\A([2-9]\d\d){2}(\d){4}\z/

  def self.clean(number)
    new(number).clean
  end

  def initialize(number)
    @parsed_number = parse_number(number)
  end

  def clean
    parsed_number =~ CODE_PATTERN ? parsed_number : nil
  end

  private

  attr_reader :parsed_number

  def parse_number(number)
    number.scan(/[[:digit:]]/).join.sub(/\A1/,'')
  end
end