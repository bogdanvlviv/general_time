require "test_helper"

class GeneralTimeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GeneralTime::VERSION
  end
end
