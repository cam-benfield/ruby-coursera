module Vehicle
  def vehicle_status # Displays current car status
    puts "Your #{@type} currently is #{@color}."
    puts "Your #{@type} currently has #{@tires} tires."
    puts "The inside of your #{@type} currently is #{@interior_color}."
    puts "Your #{@type}'s year is #{@year}."
  end

  def year_set
    puts "What year model is your #{@type}?"
    year_model = gets.chomp.to_i
    @year ||= "unknown"
    @year = year_model unless year_model > 2019
  end

  def setup
    puts "Would you like to change anything about your #{@type}?"
    change_request = gets.chomp.downcase
    case
    when change_request.downcase == "yes"
      self.changes
    when change_request.downcase == "no"
    end
  end
end

class Car
  attr_reader :year
  attr_accessor :type, :color,:tires,:interior_color
  include Vehicle

  def initialize
    @color = "metal"
    @tires = 0
    @interior_color = "metal"
    @type = "car"
    self.year_set
    self.vehicle_status
    self.setup
    self.car_counter
  end

  def car_counter
    @@cars_created ||= 0
    @@cars_created += 1
    puts "You've created #{@@cars_created} cars."
  end

  def changes # Changing car attributes
    puts "What would you like to change?"
    puts "Tires, color, or interior?"
    car_change = gets.chomp.downcase

    case
    when car_change == "tires"
      puts "Your #{@type} has #{@tires} tires."
      if @tires < 4
        puts "That's too few tires, let's add one."
        @tires += 1
      elsif @tires == 4
        puts "You have the right number of tires."
      else
        puts "That's an awkward number of tires."
      end
    when car_change == "color"
      puts "Your #{@type} is currently #{@color}."
      puts "What color would you like it to be?"
      new_color = gets.chomp.downcase
      @color = new_color
    when car_change == "interior"
      puts "Your #{@type}'s interior is currently #{@interior_color}."
      puts "What color would you like it to be?"
      new_color = gets.chomp.downcase
      @interior_color = new_color
    end

    self.vehicle_status
    self.setup
  end

end


car1 = Car.new
car2 = Car.new
