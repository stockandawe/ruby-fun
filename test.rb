# Just some puts and printfs
puts "puts works"
puts " with line breaks."

print "print works"
print " with no line breaks."

printf("\n\nprintf formats numbers like %7.2f, and strings like %s.", 3.14156, "me")

# Read from input 
puts ""
puts "Question: What's your name?"
$name = STDIN.gets
puts "Hi, you name is: "+$name

# Functions
def welcome(name)
   puts "howdy #{name}"   # inside double quotes, #{ } will evaluate the variable
end
welcome("nana")           # traditional parens

def multiply(a,b)
  product = a * b
  return product
end
puts multiply(2,3)  	# show print 6 

def test(a=1,b=2,*c)
  puts "#{a},#{b}"
  c.each{|x| print " #{x}, "}  # We will learn about "each" very soon.  I promise.
end
test 3, 6, 9, 12, 15, 18

# counting down test
puts "#############"
a = 1,2,3,4,5,6,7,8,9,10
puts a
a.length.downto(0) { |index| puts a[index] }
