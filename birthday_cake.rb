=begin
birthday_cake.rb

It's your birthday! Yay! 🎂

Can you debug this BirthdayCake class in time to sing happy birthday? 🎶

Tip: Resolve the error messages before trying to make it work

Expected output:
Happy 10th Birthday!
Birthday cake with 10 blown out candles
Lighting candles...
Birthday cake with 10 lit candles
Singing happy birthday...
🎶Happy birthday to you, happy birthday to you🎶
Blowing out candles...
Birthday cake with 10 blown out candles

=end

require "active_support/all"

class Birthday_Cake
  attr_accessor :age, :lit

  def initialize(age)
    self.age = age
    self.lit = false
    
  end

  # def birthday_cake
  # end


  def candles_status
    if self.lit == true
      return "lit"
    else
      return "blown out"
    end
  end

  def greet
    "Happy #{self.age.ordinalize} Birthday!"
  end

  def sing
    "🎶Happy birthday to you, happy birthday to you🎶"
  end

  def birthday_wish
    "Birthday cake with #{self.age} #{candles_status} candles"
  end

  def celebrate
    cake = Birthday_Cake.new(self.age)
    puts cake.greet
    puts cake.birthday_wish
    puts "Lighting candles..."
    cake.lit = true
    cake.candles_status
    puts cake.birthday_wish
    puts "Singing happy birthday..."
    puts cake.sing
    puts "Blowing out candles..."
    cake.lit = false
    puts cake.birthday_wish

    # cake
  end
end

new_cake = Birthday_Cake.new(10)
puts new_cake.celebrate
