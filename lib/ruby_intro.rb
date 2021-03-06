# Pash Sadeghian
# Dr. Verdicchio
# 9/11/2015
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    sum = 0
    arr.each do |n|
        sum = sum + n
    end
    return sum
end

def max_2_sum arr
  # YOUR CODE HERE
    return 0 if arr.size == 0
    return arr[0] if arr.size == 1
    sum = arr.max
    arr.delete_at(arr.find_index(sum))
    sum = sum + arr.max
    return sum
    # or use sorting and reversing
end

def sum_to_n? arr, n
  return false if arr.size < 2
  first = arr[0]
  arr.delete_at(0)
  while arr.size != 0
    arr.each do |num|
      sum = first + num
      return true if n == sum
    end
    first = arr[0]
    arr.delete_at(0)
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return false if s.match(/^[[:alpha:]]/) == nil
  rx = [/^A/i, /^E/i, /^I/i, /^O/i, /^U/i]
  rx.each do |regex|
    return false if s.match(regex) != nil
  end 
  return true
end

def binary_multiple_of_4? s
  s = s.to_s
  return true if s == "0"
  return false if s.match(/^[10]*00$/) == nil
  return true
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    return "$#{format("%.2f", price)}"
  end
end
