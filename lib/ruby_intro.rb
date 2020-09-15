# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  return arr.sort[arr.length-1] + arr.sort[arr.length-2]
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  end
  
  if arr.length == 1
    return false
  end
  
  sumToN = false
  for i in 0..arr.length-2
    for j in i+1..arr.length-1
      if arr[i]+arr[j] == n
        sumToN = true
        break
      end
    end
  end
  return sumToN
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  if s[0] == 'a' or s[0] == 'e' or s[0] == 'i' or s[0] == 'o' or s[0] == 'u'
    return false
  end
  if s[0] == 'A' or s[0] == 'E' or s[0] == 'I' or s[0] == 'O' or s[0] == 'U'
    return false
  end
  
  if s[0].ord >= 65 and s[0].ord <= 90
    return true
  end
  
  if s[0].ord >= 97 and s[0].ord <= 122
    return true
  end
  
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not s =~ /^[01]+$/
    return false
  end
  
  decimalForm = s.to_i(10)
  if decimalForm % 4 == 0
    return true
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price

def initialize isbn, price
  @isbn = isbn
  @price = price
  
  if @isbn.empty? or @price <= 0
    raise ArgumentError
  end
end

def price_as_string
    "$" + '%.2f' % price
end
  
end
