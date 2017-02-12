module DateAndTime
  module Calculations
    AMOUNT_DAYS_PER_YEAR = 365
    AMOUNT_WEEKS_PER_YEAR = 52
    AMOUNT_MONTHS_PER_YEAR = 12

    # Returns the number of days to given date, default to +Date.current+.
    def days_between(date = ::Date.current)
      date1, date2 = self.to_date, date.to_date

      ((date2.yday - date1.yday) + AMOUNT_DAYS_PER_YEAR * (date2.year - date1.year)).abs
    end

    # Returns the number of weeks to given date, default to +Date.current+.
    def weeks_between(date = ::Date.current)
      date1, date2 = self.to_date, date.to_date

      ((date2.cweek - date1.cweek) + AMOUNT_WEEKS_PER_YEAR * (date2.year - date1.year)).abs
    end

    # Returns the number of months to given date, default to +Date.current+.
    def months_between(date = ::Date.current)
      date1, date2 = self.to_date, date.to_date

      ((date2.month - date1.month) + AMOUNT_MONTHS_PER_YEAR * (date2.year - date1.year)).abs
    end

    # Returns the number of years to given date, default to +Date.current+.
    def years_between(date = ::Date.current)
      date1, date2 = self.to_date, date.to_date

      (date2.year - date1.year).abs
    end
  end
end
