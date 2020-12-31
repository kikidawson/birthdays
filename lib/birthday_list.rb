require 'date'

class BirthdayList
  attr_reader :saved_birthdays

  def initialize
    @saved_birthdays = []
  end

  def add(birthday)
    @saved_birthdays << birthday
  end

  def all
    @saved_birthdays.each do |birthday|
      puts "#{birthday.name}: #{birthday.long_date}"
    end
  end

  def check_today
    @saved_birthdays.each do |birthday|
      puts "It's #{birthday.name}'s birthday. They're #{birthday.age} today!" if today?(birthday)
    end
  end

  private

  def current_date
    Time.now.strftime("%d/%m")
  end

  def birthday_date(birthday)
    Date.parse(birthday.date).strftime("%d/%m")
  end

  def today?(birthday)
    birthday_date(birthday) == current_date
  end
end
