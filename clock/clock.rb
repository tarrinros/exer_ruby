class Clock
  MINUTES_IN_HOUR = 60
  MINUTES_IN_DAY = 1440
  TIME_FORMAT = '%02d:%02d'

  def initialize(hour: 0, minute: 0)
    @time_in_minutes = normalize_to_minutes(hour, minute)
  end

  def ==(clock)
    time_in_minutes == clock.time_in_minutes
  end

  def +(clock)
    Clock.new(minute: time_in_minutes + clock.time_in_minutes)
  end

  def -(clock)
    Clock.new(minute: time_in_minutes - clock.time_in_minutes)
  end

  def to_s
    TIME_FORMAT % time_in_minutes.divmod(MINUTES_IN_HOUR)
  end

  private

  def normalize_to_minutes(hour, minute)
    (hour * MINUTES_IN_HOUR + minute) % MINUTES_IN_DAY
  end

  protected

  attr_reader :time_in_minutes
end