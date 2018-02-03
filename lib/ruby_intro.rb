# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0){|sum, i| sum + i}
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? {|x,y|x + y == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}" 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  else
    return /^[10]*00$/.match(s) != nil
  end 
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn; attr_accessor :price

def initialize(isbn, price)
  raise ArgumentError if isbn.empty? || price <= 0
  @isbn = isbn
  @price = price
end

def price_as_string
  sprintf('$%.2f',@price)
end
end
