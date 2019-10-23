# Class syntax
class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
ruby.description

# Instance variable
# An instance variable start with @. For example, @name is an instance variable.
# An object is creating an instance of class. For example ruby is an instance object of Language.
# When we create an object instance we use .new keyword. When we call .new class initialize method is gonna call first.
# We call constructor method as well.
# person = Person.new("Ramiz")

# Variable types of class

class Computer
  $manufacturer = "Mango Computer, Inc." # => Global variable
  @@files = {hello: "Hello, world!"} # => Class variable
  
  def initialize(username, password)
    @username = username # => Instance variable
    @password = password # => Instance variable
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.


# Inheritance
# Inheritance Syntax
=begin
	
class DerivedClass < BaseClass
  # Some stuff!
end
	
=end

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

# Mixin for multiple inherit
module Languages
  FAVE = "Ruby"  
end

class Master
  include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory

# Attribute access
class Person
  attr_reader :name :age
  attr_writer :is_active
  attr_accessor :job
  def initialize(name, age, job)
    @name = name
    @age = age   
    @job = job
    @is_active = false
  end
end

p = Person.new("ramiz", 50, "godfather")
puts p.name
puts p.age
puts p.job

# Module
module ModuleName
  FAVE_BOOK = "GOT"
end

# Example of Module with include in class
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

# Public and private methods
class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status
    puts "All systems go!"
  end
  
  private
  def password
    return 12345
  end
end