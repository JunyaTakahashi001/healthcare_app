module HealthsHelper
    def end_of_month
        date = @month
        days = date.end_of_month
        days = days.day
    end
end
