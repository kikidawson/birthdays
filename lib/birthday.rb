require 'date'

class Birthday
  attr_reader :name

  def initialize(name, date)
    @name = name
    @date = date
  end

  def date
    Date.parse(@date).strftime('%d/%m/%Y')
  end

  def long_date
    Date.parse(@date).strftime('%d %B %Y')
  end

# gives age at birthday in current year
  def age
    current_year - birthday_year
  end

  private

  def birthday_year
    Date.parse(date).year
  end

  def current_year
    Time.now.year
  end
end
