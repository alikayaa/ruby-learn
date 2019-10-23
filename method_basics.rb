# In ruby we have some method rule. 

# End with ! It means change data with that method

name = "Ali"

puts name.uppercase # => ALI
puts name # => Ali

puts name.uppercase! # => ALI
puts name # => ALI

# End with ? It means that method run true or false

name = "Ali"

name.blank? # => false