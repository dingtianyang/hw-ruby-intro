# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    ans = 0;
    arr.each { |num|
        ans += num;
    }
    return ans;
end

def max_2_sum arr
    if arr.size == 0 
        return 0
    elsif arr.size == 1
        return arr[0]
    else
        max = -Float::INFINITY
        secMax = -Float::INFINITY
        arr.each { |num|
            if num > max
                secMax = max
                max = num
            elsif num > secMax
                secMax = num
            end
        }
        return max + secMax
    end
end

def sum_to_n? arr, n
    if arr.size <= 1
        return false
    end
    lookup = {}
    arr.each { |num|
        if lookup.has_key?(n - num)
            return true
        end
        if !lookup.has_key?(num)
            lookup[num] = true
        end
    }
    return false
end

# Part 2

def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant? s
    s.downcase =~ /\A[b-df-hj-np-tv-z]/
end

def binary_multiple_of_4? s
	return s !~ /\D/ && s.size != 0 && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		raise ArgumentError.new(
    		"ISBN number should not be empty!"
  		) if isbn.size == 0

  		raise ArgumentError.new(
    		"Price should not less than or equal to zero!"
  		) if price <= 0

      	@isbn=isbn
      	@price=price
   	end

   	def isbn=(isbn)
    	@isbn = isbn
  	end

  	def isbn
    	@isbn
  	end

  	def price=(price)
    	@price = price
  	end

  	def price
    	@price
  	end

  	def price_as_string
  		return "$%0.2f" % [@price]
  	end

end
