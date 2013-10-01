def multiples_of_3_or_5_till(limit)
  a = Array.new(limit)
  a.fill{|i| i}
  a.keep_if{|e| (e % 3 == 0) || (e % 5 == 0)}
  a.inject(:+)
end


def sum_of_fibonacci_not_more_than(limit)
  a = [1, 2]
  lastFib = 0
  begin
    a.push(lastFib) if lastFib > 0
    lastFib = a.last(2).inject(:+)
  end while  lastFib <= limit
  a.keep_if{|e| e % 2  == 0}.inject(:+)
end

def largest_prime_factor(num)
  prime = 2
  begin
    if (num % prime == 0)
      num = num / prime
    else
      prime = prime + 1
    end
  end while (prime <= num)
  prime
end


def largest_palindome
  largest = 0
  999.downto(100){ |i|

    if (i % 11 == 0)
      j_high = i - 1
      decrement = 1
    else
      j_high = 990
      decrement = 11
    end

    j = j_high
    while (j > 99)
      potential = i * j
      if (is_palindrome?(potential) && potential > largest)
        largest = potential
      end
      j -= decrement
    end
  }
  largest
end


def is_palindrome?(num)
  num / 100000 == num % 10 && (num / 10000) % 10 == (num / 10) % 10 && (num / 1000) % 10 == (num / 100) % 10
end

def smallest_multiple(num)
  multiple = 1
  1.upto(num){ |i|
    if (multiple % i != 0)
      2.upto(i) { |j|
        potential = multiple * j
        if (potential % i == 0)
          multiple = potential
          break
        end
      }
    end
  }
  multiple
end


#print(multiples_of_3_or_5_till(1000))
#print(sum_of_fibonacci_not_more_than(4_000_000))

#print(largest_prime_factor(600851475143))
#largest_palindome
#print smallest_multiple(20)