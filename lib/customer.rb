require "pry"

class Customer

  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def meals
    Meal.all.select do |meal|
      if self.name== meal.customer.name
        #binding.pry
        meal
      end
    end
  end

  def waiters
    Waiter.all.select do |waiter|
      #binding.pry
      if customer.waiter== self
        #binding.pry
        waiter
      end
    end
  end



  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end


end
