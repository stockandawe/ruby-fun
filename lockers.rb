#
# From this interview: http://themacro.com/articles/2016/09/employee-1-coinbase/
# So there are 100 lockers in a row. They’re all closed, okay? A kid goes by.
# He opens every single locker.
# A second kid goes by. Now he closes every other locker, every second locker.
# Third kid comes by, every third locker. If it’s open, he closes it. If it closed, he opens it.
# Then the fourth kid goes by. Every fourth locker, he changes the state.
# And now 100 kids go by.
# What is the state of the lockers after 100 kids go by?
#

def toggle(locker_state)
  locker_state == 0 ? 1 : 0
end

lockers = Array.new(100)
lockers.fill(0)

puts lockers.inspect

for step in 1..100
  loop = (0..99).step(step).to_a

  for i in loop do
    lockers[i] = toggle(lockers[i])
  end
end

puts lockers.inspect

# Answer: Lockers that are perfect squares are open.
# The reason being, they’re the only numbers that have an odd number of factors.
# So the number of factors determines whether a locker is open or closed because
# that’s the number of kids that interacted with it. And so the odd number of
# factors means it’s open and even number of factors means it’s closed.
# And the only numbers that have an odd number of factors are perfect squares like 16, 25, 36.
