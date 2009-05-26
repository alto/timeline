module ApplicationHelper
  def display_date(date)
    return '' if date.nil?
    date.strftime("%d.%m.%Y")
  end
end
