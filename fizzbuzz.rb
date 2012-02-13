file = File.new("fizzbuzz.data", "r")

# global debug switch
DEBUG = false

# debug function
def debug(force_debug, msg)
  if (force_debug || DEBUG)
    puts "#{msg}"
  end
end

def process_line(line)
  debug(false, "Processing line: #{line}")
  input = line.split(" ").map { |s| s.to_i }  
 
  for cntr in (1..input[2])
    if ((cntr % input[0] == 0) || (cntr % input[1] == 0))
      printf("%s%s", (cntr % input[0] == 0) ? "F" : "", (cntr % input[1] == 0) ? "B " : " ");
    else
      printf("#{cntr} ")
    end
  end

end

# main, read file
while (line = file.gets)
  
  # skip empty lines
  if (line == '\0')
    continue
  end
  
  # do something with the line
  process_line(line)
  puts ""
end