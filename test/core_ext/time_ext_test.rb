require "test_helper"
require "core_ext/date_and_time_behavior"

class TimeExtCalculationsTest < Minitest::Test
  def date_time_init(year, month, day, hour, minute, second, usec = 0)
    Time.local(year, month, day, hour, minute, second, usec)
  end

  include DateAndTimeBehavior
end
