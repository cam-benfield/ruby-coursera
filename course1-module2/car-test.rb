class Car
  attr_reader :year
  attr_accessor :color,:tires,:interior_color

  def initialize (yearVar)
    @color = "metal"
    @tires = 0
    @interior_color = "metal"
    self.year = yearVar
    self.car_status
  end

  def year= (year_model)
    @year ||=2019
    @year = year_model unless year_model > 2019
  end

  def setup
    puts "What year model is your car?"
    car_year = gets.chomp.to_i
      self.year = car_year
      self.car_status
    puts "Would you like to change anything about your car?"
    car_change = gets.chomp.downcase
    case
    when car_change.downcase == "yes"
      self.changes
    when car_change.downcase == "no"
      self.car_status
    end
  end

  def changes # Changing car attributes
    puts "What would you like to change?"
    puts "Tires, color, or interior?"
    car_change = gets.chomp.downcase
    case
    when car_change == "tires"
      puts "Your car has #{@tires} tires."
      if @tires < 4
        puts "That's too few tires, let's add one."
        @tires += 1
      elsif @tires == 4
        puts "You have the right number of tires."
      else
        puts "That's an awkward number of tires."
      end
    when car_change == "color"
      puts "Your car is currently #{@color}."
      puts "What color would you like it to be?"
      new_color = gets.chomp.downcase
      @color = new_color
    when car_change == "interior"
      puts "Your car's interior is currently #{@interior_color}."
      puts "What color would you like it to be?"
      new_color = gets.chomp.downcase
      @interior_color = new_color
    end
    self.car_status
    self.setup
  end

  def car_status
    puts "Your car currently is #{@color}."
    puts "Your car currently has #{@tires} tires."
    puts "The inside of your car currently is #{@interior_color}."
    puts "Your car's year is #{@year}."
  end
end

car1 = Car.new(2019)
car1.setup
