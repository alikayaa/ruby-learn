def say_hi
	puts "Hi!"
end

say_hi # => "Hi!"

def sum(m, n)
	m + n
end

=begin
	
Ruby’s methods will return the result of the last evaluated expression. You don't have to put return keyword like;

def sum(m, n)
	return m+n
end
	
=end

puts sum(1,3)


# Blocks!
[1, 2, 3, 4, 5].each { |i| puts i*5 } # inside {} calling blocks!