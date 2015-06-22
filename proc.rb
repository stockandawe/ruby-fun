# Using yield

def call_this_block_twice
  yield
  yield
end

call_this_block_twice { puts "this will be printed twice" }

# Using proc

my_proc = Proc.new { puts "this code can be executed later" }
my_proc.call

# another way to write a proc
other_proc = Proc.new do
  puts "this code can be executed later"
end
other_proc.call

# lambdas
stabby_lambda_proc = -> { puts "from a stabby lambda" }
stabby_lambda_proc.call
