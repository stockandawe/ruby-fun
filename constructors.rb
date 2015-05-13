# In most modern OO languages a constructor is the method with the same name as the class
# In ruby, it is the initialize method
# def initialize(x,y)
#   @x = x
#   @y = y
# end
#
# To construct a new instance of an object, ruby needs to do:
# 1. Allocate a new, empty object
# 2. Run specialized initialization
# 3. Return the initialized instance

class Point
  # Our own initialize method
  def self.my_new(@args, &block)
    # Step-1: Use built-in method callled 'allocate'
    instance = allocate
    # Step-2: specialized initialization
    instance.my_initialize(@args, &block)
    # Step-3: return the instance
    instance
  end

  def my_initialize(x,y)
    @x = x
    @y = y
  end
end

p = Point.my_new(3,5)
