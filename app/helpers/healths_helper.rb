module HealthsHelper
    def end_of_month
        date = @month
        days = date.end_of_month
        days = days.day
    end

    def first_day
        date = @month
        first_day = date.beginning_of_month
    end

    def last_day
        date = @month
        last_day = date.end_of_month
    end
end

