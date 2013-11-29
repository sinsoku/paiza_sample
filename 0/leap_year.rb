require 'date'

class LeapYear
  LEAP_MSG = "%d is a leap year"
  NOT_LEAP_MSG = "%d is not a leap year"

  class << self
    def leap?(n)
      n % 400 == 0 || (n % 4 == 0 && n % 100 != 0)
    end

    def msg(n)
      leap?(n) ? LEAP_MSG % n : NOT_LEAP_MSG % n
    end

    def run
      t = gets.chomp.to_i
      t.times.each do
        n = gets.chomp.to_i
        puts msg(n)
      end
    end
  end
end

if __FILE__ == $0
  LeapYear.run
end
