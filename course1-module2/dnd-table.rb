# Idea is to create player classes with info listed in the attr_reader
# Classify players into age groups
# Minimize duplicates of classes
# Set Table Caps per DM

  attr_reader :name, :age, :level, :char_name, :char_class, :play_style, :age_bracket

  def initialize (name, age, exp_level, char_name, char_class, play_style)
    @name = name
    @age = age
    @exp_level = exp_level
    @char_name = char_name
    @char_level = char_level
    @char_class = char_class
  end

  def player_info
    puts "What is your name?"
    player_name = gets.chomp
    @name = player_name unless player_name == false
    puts "Your name is #{@name}."

    puts "What is your age?"
    player_age = gets.chomp.to_i
    @age = player_age
    puts "You're #{@age} years old."
  end
  def age_brackets
    case
    when @age > 120


    end
end

class Table
