# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
	arr.inject(0){|sum,x| sum + x} 
	#inject(initial) {|accumulator val, element| block} 
	# applies the block to all elements of the array
end

def max_2_sum (arr)
	return 0 if arr.empty?
	
	return arr[0] if arr.size == 1
	
	arr.sort! {|x,y| y <=> x}
	
	arr[0] + arr[1]
	
	
end

def sum_to_n? (arr, n)
	
	return false if arr.empty?
	
	return false if arr.size == 1
	
	arr.combination(2).any? {|a, b| a + b == n }
	#combination(2) gets all combinations of 2 elements
	#any? returns true if any of the combinations if they satisfy the block
	
end

# Part 2

def hello(name)
	"Hello, " + name
end

def starts_with_consonant? s
	
	
	/^[b-df-hj-np-tv-z]/i.match(s) != nil
	
	
	
end

def binary_multiple_of_4? s
	s =~ /^[01]*00$/
end

# Part 3

class BookInStock
	attr_accessor :isbn
	attr_accessor :price
	
	
	def initialize(isbn, price)
		@isbn = isbn
		@price = price
		
		raise ArgumentError,
			"Illegal argument" if price <= 0 or isbn.empty?
		
		
	end
			
	def price_as_string 
		sprintf("$%2.2f", @price)
	end
	
end

