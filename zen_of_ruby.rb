# one line if & unless statement
# expression if boolean

puts "Ready to go" if ready?
puts "Let's hard work!" unless successful

# ternary conditional expression
# boolean ? Do this if true: Do this if false
expression = age < 18 ? "Teenage!" : "Older!"

# When and then
greeting = gets

case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end

# Conditional Assignment ||=
name = nil
name ||= "Ramiz" # => Ramiz
name ||= "Kenan" # => Ramiz
name = "Kenan" # => Kenan

# respond_to? return true when object can call that symbols and receive that method.
[1, 2, 3].respond_to?(:push) # => true
[1, 2, 3].respond_to?(:to_sym) # => false

array = [1,2,3,4]
# Add element to array
array.push(5)
# Another way to add
array << 6

# string operations
name = "Ramiz " + "Karaeski"
# Also
name = ""
name << "Ramiz " << "Karaeski"