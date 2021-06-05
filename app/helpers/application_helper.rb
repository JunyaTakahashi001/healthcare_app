module ApplicationHelper
    def end_of_month
        today = Date.today
        end_day = today.end_of_month
        end_day = end_day.day
    end
end