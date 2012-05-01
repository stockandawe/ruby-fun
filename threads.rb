# Understanding how ruby threads work. 
# Look at 'top -p <process_id>' while running

#!/usr/bin/env ruby

def func(id, count)
    i = 0;
      while (i < count)
            puts "Thread #{id} Time: #{Time.now}"
            sleep(1)
            i = i + 1
      end
end
 
puts "Started at #{Time.now}"
thread1 = Thread.new{func(1, 100)}
thread2 = Thread.new{func(2, 100)}
thread3 = Thread.new{func(3, 100)}
thread4 = Thread.new{func(4, 100)}

thread1.join
thread2.join
thread3.join
thread4.join

puts "Ending at #{Time.now}"

