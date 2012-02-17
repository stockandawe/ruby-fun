# Print out the prime numbers less than a given number N.
# Assume given N is always a positive integer

require 'mathn'

unless ARGV[0]
  puts "\n Usage: #{$0} <num>"
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

if (input > 2) # 2 is the only even prime number
  print "2 "
end

for num in (3..input-1).step(2) # no need to check even numbers
  if (num.prime?) # yeah, that was easy. Make sure to require 'mathn' 
    print "#{num} "
  end
end