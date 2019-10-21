=begin

	Example of Ruby's Basics. 
	#101: get input and show output.
	
=end

# write single line text without \n
print "Please, enter your first name:" 

# get user input from console
first_name = gets.chomp 

# write single line text without \n
print "Please, enter your last name:" 

# get user input from 
last_name = gets.chomp 

# show last text with string format with \n 
puts "Your name is #{first_name} #{last_name}"

=begin
	
Please note that, If you want to start always at new line, use 'puts' otherwise use 'print'
	
=end