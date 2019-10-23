# If, elsif and else statement
print "Your age please: "
age = Integer(gets.chomp)

if age < 18
  puts "You're teenage!"
elsif age < 40
  puts "You're middle aged!"
else
  puts "Are you retired?"
end

# unless statement 
have_to_work = false

puts "Let's go to the party!" unless have_to_work # => It's appear. the unless block is run when condition result is false

=begin

	All if operators

	if age <= 18
	if age < 18
	if age > 18
	if age >= 18
	if age == 18
	if age != 18
	
	Additional logic

	if age > 7 && age < 18
	if age > 7 || age < 21

	Please note that, Ruby does this via short-circuit evaluation. 
	That means that Ruby doesn’t look at both expressions unless it has to; if it sees false && true
	it stops reading as soon as it sees && because it knows false && anything must be false.

	&& results;
	true && true # => true
	true && false # => false
	false && true # => false
	false && false # => false

	|| results;
	true || true # => true
	true || false # => true
	false || true # => true
	false || false # => false

	! Not for boolean
	!true => false
	!false => true

+end
