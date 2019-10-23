# While
index = 0

while index < 10
	puts index
	index += 1
end

# Until

index = 0

until index > 10
	puts index
	index += 1
end
# It's sort of like a backward while.

# For
for num in 1..10
	puts num
end

# Loop

index = 0

loop do
	index += 1
	puts index

	break if index > 10
end

# Next keyword. When you want to skip an iteration
for num in 1..10

	next if num % 2 == 0
	puts num

end