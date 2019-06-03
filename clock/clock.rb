require 'time'
require 'pry'

Clock = Struct.new(:hour, :minute) do
  def initialize(hour: 0, minute: 0)
    super(hour, minute)
  end

  def to_s
   Time.parse("#{hour}:#{minute}").strftime("%H:%M")
  end
end

puts Clock.new(hour: 8).to_s