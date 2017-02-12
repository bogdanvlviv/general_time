module DateAndTimeBehavior
  def test_days_between
    assert_equal 0, date_time_init(2017, 2, 10, 10, 10, 10).days_between(date_time_init(2017, 2, 10, 10, 10, 10))

    assert_equal 0, date_time_init(2017, 2, 10, 9, 10, 10).days_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 0, date_time_init(2017, 2, 10, 10, 10, 10).days_between(date_time_init(2017, 2, 10, 9, 10, 10))

    assert_equal 1, date_time_init(2017, 2, 9, 10, 10, 10).days_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 1, date_time_init(2017, 2, 10, 10, 10, 10).days_between(date_time_init(2017, 2, 9, 10, 10, 10))
    assert_equal 9, date_time_init(2017, 2, 1, 10, 10, 10).days_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 9, date_time_init(2017, 2, 10, 10, 10, 10).days_between(date_time_init(2017, 2, 1, 10, 10, 10))
    assert_equal 365, date_time_init(2016, 2, 10, 10, 10, 10).days_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 365, date_time_init(2017, 2, 10, 10, 10, 10).days_between(date_time_init(2016, 2, 10, 10, 10, 10))
  end

  def test_weeks_between
    assert_equal 0, date_time_init(2017, 2, 10, 10, 10, 10).weeks_between(date_time_init(2017, 2, 10, 10, 10, 10))

    assert_equal 0, date_time_init(2017, 2, 10, 9, 10, 10).weeks_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 0, date_time_init(2017, 2, 10, 10, 10, 10).weeks_between(date_time_init(2017, 2, 10, 9, 10, 10))

    assert_equal 1, date_time_init(2017, 2, 3, 10, 10, 10).weeks_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 1, date_time_init(2017, 2, 10, 10, 10, 10).weeks_between(date_time_init(2017, 2, 3, 10, 10, 10))
    assert_equal 9, date_time_init(2016, 12, 9, 10, 10, 10).weeks_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 9, date_time_init(2017, 2, 10, 10, 10, 10).weeks_between(date_time_init(2016, 12, 9, 10, 10, 10))
    assert_equal 52, date_time_init(2016, 2, 10, 10, 10, 10).weeks_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 52, date_time_init(2017, 2, 10, 10, 10, 10).weeks_between(date_time_init(2016, 2, 10, 10, 10, 10))
  end

  def test_months_between
    assert_equal 0, date_time_init(2017, 2, 10, 10, 10, 10).months_between(date_time_init(2017, 2, 10, 10, 10, 10))

    assert_equal 0, date_time_init(2017, 2, 9, 10, 10, 10).months_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 0, date_time_init(2017, 2, 10, 10, 10, 10).months_between(date_time_init(2017, 2, 9, 10, 10, 10))

    assert_equal 1, date_time_init(2017, 1, 10, 10, 10, 10).months_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 1, date_time_init(2017, 2, 10, 10, 10, 10).months_between(date_time_init(2017, 1, 10, 10, 10, 10))
    assert_equal 9, date_time_init(2016, 5, 10, 10, 10, 10).months_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 9, date_time_init(2017, 2, 10, 10, 10, 10).months_between(date_time_init(2016, 5, 1, 10, 10, 10))
    assert_equal 12, date_time_init(2016, 2, 10, 10, 10, 10).months_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 12, date_time_init(2017, 2, 10, 10, 10, 10).months_between(date_time_init(2016, 2, 10, 10, 10, 10))
  end

  def test_years_between
    assert_equal 0, date_time_init(2017, 2, 10, 10, 10, 10).years_between(date_time_init(2017, 2, 10, 10, 10, 10))

    assert_equal 0, date_time_init(2017, 1, 10, 10, 10, 10).years_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 0, date_time_init(2017, 2, 10, 10, 10, 10).years_between(date_time_init(2017, 1, 10, 10, 10, 10))

    assert_equal 1, date_time_init(2016, 2, 10, 10, 10, 10).years_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 1, date_time_init(2017, 2, 10, 10, 10, 10).years_between(date_time_init(2016, 2, 10, 10, 10, 10))
    assert_equal 9, date_time_init(2008, 2, 10, 10, 10, 10).years_between(date_time_init(2017, 2, 10, 10, 10, 10))
    assert_equal 9, date_time_init(2017, 2, 10, 10, 10, 10).years_between(date_time_init(2008, 2, 10, 10, 10, 10))
  end
end
