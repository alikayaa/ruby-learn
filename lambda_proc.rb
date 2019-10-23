# send block to method via 'yield' keyword
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

# yield with param
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

# Block is not can be save. When we need some block call again and again we can use Proc or lambda. Let's start Proc.
cube = Proc.new { |x| x ** 3 }

[1, 2, 3].collect!(&cube) # we need to call via & It returns [1,8,27]
=begin
	
	Why Procs?	
	
	1- Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
	2-Unlike blocks, procs can be called over and over without rewriting them. 
	This prevents you from having to retype the contents of your block every time you need to
	execute a particular bit of code.
	
=end

test = Proc.new { puts "Ramiz"}
test.call

# Proc with symbols
strings = ["1", "2", "3"]
nums = strings.map(&:to_i)

# Lambda
# lambda { puts "Hello!" }
# Proc => Proc.new { puts "Hello!" }

cube = lambda { |x| x ** 3 }

[1, 2, 3].collect!(&cube) # we need to call via & It returns [1,8,27]
