# Arrays.
# Create a Array
array = [1,2,3,4,5]

# Access by index
puts array[2] # => 3 Index is start from zero. 

# String Array. It can be boolean array too.
string_array = ["aga", "nabtin"]

# Multi dimensional array. We call Array of array
multi_dimensional_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

# Hash. Like python dictionaries or javascript's object.
user = {
	"first_name" => "Ramiz",
	"last_name" => "Karaeski",
	"profession" => "Godfather",
	"age" => 56,
	"is_active" => true
}

# Access has value via key

puts user["first_name"] + user["last_name"]

# Another way to create a hash.
user = Hash.new
user["first_name"] = "Ramiz"

# Iteration on hash
user = {
	"first_name" => "Ramiz",
	"last_name" => "Karaeski",
	"profession" => "Godfather",
	"age" => 56,
	"is_active" => true
}

user.each { |key, value| puts "#{key}: #{value}" }

# Hash with default value
movie_ratings = Hash.new(0)

puts movie_ratings["Matrix"] # => 0

my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }
# ==> one two three

my_hash.each_value { |v| print v, " " }
# ==> 1 2 3

# Hash key with symbol
user = {
	:first_name => "Ramiz",
	:last_name => "Karaeski",
	:profession => "Godfather",
	:age => 56,
	:is_active => true
}

# Hash access via symbol faster than string keys.

# Hash key with symbol via new way.
user = {
	first_name:  "Ramiz",
	last_name: "Karaeski",
	profession: "Godfather",
	age: 56,
	is_active: true
}