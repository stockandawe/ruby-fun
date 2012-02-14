file = File.new("spiral.data", "r")

# global debug switch
DEBUG = false

# global direction flags
DIRECTION_EAST = 0
DIRECTION_SOUTH = 1
DIRECTION_WEST  = 2
DIRECTION_NORTH = 3

# debug function
def debug(force_debug, msg)
  if (force_debug || DEBUG)
    puts "#{msg}"
  end
end

def print_spiral(matrix, max_row, max_col)
  direction = DIRECTION_EAST
  num_elements = 0
  start_row = 0
  start_col = 0
  end_row = max_row - 1
  end_col = max_col - 1 

  debug(true, "type of array is #{matrix.class}")
  debug(true, matrix)

while num_elements < max_row * max_col
  case direction
    when DIRECTION_EAST
      # go east and remove the topmost remaining row
      for cntr in (start_col..end_col)
        print "#{matrix[start_row * max_col + cntr]} "
        num_elements += 1
      end
      start_row +=1
      direction = DIRECTION_SOUTH
    when DIRECTION_SOUTH
      # go south and remove rightmost column remaining
      for cntr in (start_row..end_row)
        print "#{matrix[cntr * max_col + end_col]} "
        num_elements += 1
      end
      end_col -= 1
      direction = DIRECTION_WEST     
    when DIRECTION_WEST
      # go west and remove the bottommost row
      end_col.downto(start_col) { |cntr| 
        print "#{matrix[end_row * max_col + cntr]} "
        num_elements += 1
      }
      end_row -=1
      direction = DIRECTION_NORTH
    when DIRECTION_NORTH
      # go north and remove topmost row
      end_row.downto(start_row) { |cntr| 
        print "#{matrix[cntr * max_col + start_col]} "
        num_elements += 1
      }
      start_col += 1
      direction = DIRECTION_EAST     

  end
end

end

def process_line(line)
  debug(false, "Processing line: #{line}")
  
  matrix_dimensions = line.split(";")
  max_row = matrix_dimensions[0].to_i
  max_col = matrix_dimensions[1].to_i
  
  debug(true, "#{max_row}x#{max_col} array")
  array = matrix_dimensions[2].split(" ")

  print_spiral(array, max_row, max_col)
   
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