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
  return "Hello, " name.capitalize
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
