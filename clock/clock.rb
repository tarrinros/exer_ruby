class Clock
  MIN_IN_HOUR = 60
  MIN_IN_DAY = 1440

  attr_reader :time_in_minutes

  def initialize(hour: 0, minute: 0)
    @time_in_minutes = count_time(hour, minute)
  end

  def +(clock)
    Clock.new(minute: time_in_minutes + clock.time_in_minutes)
  end

  def -(clock)
    Clock.new(minute: time_in_minutes - clock.time_in_minutes)
  end

  def ==(clock)
    time_in_minutes == clock.time_in_minutes
  end

  def to_s
    '%02d:%02d' % time_in_minutes.divmod(MIN_IN_HOUR)
  end

  private

  def count_time(hour, minute)
    (hour * MIN_IN_HOUR + minute) % MIN_IN_DAY
  end
end