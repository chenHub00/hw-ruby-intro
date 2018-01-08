# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr.inject(0,:+)
  num_added = 0
  arr.each { |a| num_added += a}
  num_added
end

raise 'sum([]) != 0' unless sum([]) == 0
raise 'sum([1]) != 1' unless sum([1]) == 1
raise 'sum([1,2,3,4) != 10' unless sum([1,2,3,4]) == 10
raise 'sum([1,2,-5]) != -2' unless sum([1,2,-5]) == -2

def max_2_sum arr
  # YOUR CODE HERE
  arr_s = arr.sort
  max1 = arr_s.pop
  max1 ||= 0
  max2 = arr_s.pop
  max2 ||= 0
  max1 + max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr_copy = Array.new(arr)
  result = false
  while arr_copy.empty? == false and result != true
    to_sum = arr_copy.pop
    arr_copy.each {|a| result = a + to_sum == n}
    # puts result
  end
  result
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  consonants = /[[a-z&&[^aeiou]][A-Z&&[^AEIOU]]]/
  if s[0] =~ consonants
    return true 
  else 
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # That takes a string and 
  # returns true if the string represents a binary number that is a multiple of 4. 
  # NOTE: be sure it returns false if the string is not a valid binary number!
  # To test
#  is_binary = '1010011'
#  not_binary = '2342421'
  # I want to count the elements that are binary
  # and separate them from those that are not
  return false if s.size != s.count('01') || s.size == 0
  if s.to_i(2) % 4 == 0
    return true 
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price # not only getter or reader, nor setter or writter, but both
  def initialize(isbn, price)
    raise ArgumentError if isbn == ''
    raise ArgumentError.new("The price is negative or zero!") if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
#    "$" + price.to_s
  sprintf("$%0.2f", price)   
  end
end
