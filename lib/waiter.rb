require "pry"

class Waiter

  attr_accessor :name, :years, :meals
  @@all = []
  def initialize(name, years)
    @name = name
    @years = years
    @@all << self
  end

  def best_tipper

  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def self.all
    @@all
  end

  def meals
    Meal.all
  end

end
