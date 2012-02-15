# Choose a number, reverse its digits and add it to the original. 
# If the sum is not a palindrome (which means, it is not the same number from
# left to right and right to left), repeat this procedure. 
# eg.
# 195 (initial number) + 591 (reverse of initial number) = 786
# 786 + 687 = 1473
# 1473 + 3741 = 5214
# 5214 + 4125 = 9339 (palindrome)

unless ARGV[0]
  puts "\n Usage: #{$0} <number to test>"
  exit
end

input = ARGV[0].to_i

# global debug switch
DEBUG = false

# debug function
def debug(force_debug, msg)
  if (force_debug || DEBUG)
    puts "#{msg}"
  end
end

def is_plaindrome(num)
  if (num.to_s == num.to_s.reverse)
    return true
  else
    return false
  end
end

def reverse_and_add(num)
  rev = num.to_s.reverse.to_i
  num += rev
  return num
end

iteration = 0

while (!(is_plaindrome(input)))
  iteration += 1
  debug(TRUE, "checking: #{input}")
  input = reverse_and_add(input)
end

puts "Found in #{iteration} iterations"
