require 'time'

Clock = Struct.new(:hour, :minute) do
  def initialize(hour: 0, minute: 0)
    super(hour, minute)
  end

  def to_s
   Time.parse("#{convert_hour}:#{convert_minute}").strftime("%H:%M")
  end

  private

  def convert_hour
    (hour % 24 + m_to_h) % 24
  end

  def convert_minute
    minute % 60
  end

  def m_to_h
    (((minute - (minute % 60)) / 60) % 24)
  end
end