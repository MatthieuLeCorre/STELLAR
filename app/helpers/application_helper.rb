module ApplicationHelper
  def currency(number)
    return number_to_currency(number, precision: 0)
  end
end
