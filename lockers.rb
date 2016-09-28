#
# So there are 100 lockers in a row. They’re all closed, okay? A kid goes by.
# He opens every single locker.
# A second kid goes by. Now he closes every other locker, every second locker.
# Third kid comes by, every third locker. If it’s open, he closes it. If it closed, he opens it.
# Then the fourth kid goes by. Every fourth locker, he changes the state.
# And now 100 kids go by.
# What is the state of the lockers after 100 kids go by?
#

def toggle(locker)
  locker == 0 ? 1 : 0
end

lockers = Array.new(100)

for i in 0..99 do
  lockers[i] = 0
end

puts lockers.inspect

for step in 1..100
  loop = (0..99).step(step).to_a

  for i in loop do
    lockers[i] = toggle(lockers[i])
  end
end

puts lockers.inspect
