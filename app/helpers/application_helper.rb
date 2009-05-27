module ApplicationHelper
  def display_date(date)
    return '' if date.nil?
    date.strftime("%d.%m.%Y")
  end
  
  def display_date_for_milestone(milestone)
    "#{milestone.day}.#{milestone.month}.#{milestone.year}"
  end
end
