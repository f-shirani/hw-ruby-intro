# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
  
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(0, :+)
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return FALSE if arr.empty?
  arr.permutation(2).any? {|a,b| a+b==n}
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
  
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if ( !s.empty?  &&  /[a-zA-Z]/ =~ s[0]  &&  /[^aeiou]/ =~ s[0].downcase )
    return TRUE
  else
    return FALSE
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (!s.empty?  && s.chars.all? {|x| x =~ /[01]/} && s.to_i % 4 == 0)
	  return TRUE
  else
    return FALSE
  end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE

 attr_accessor :isbn, :price
 def initialize(isbn,price)
   
      raise ArgumentError if( isbn.empty? or  price <= 0)
      @isbn  = isbn
      @price = price
      
 end
 
 def price_as_string
   
   '$%.2f' % @price
   
 end
 
end
