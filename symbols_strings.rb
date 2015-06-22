# Compare and contrast Symbols and Strings in Ruby? Why use one vs. the other?

puts "Symbols are singleton based on value, immutable, non-garbage collected objects."
puts "Example: symbols = [:symbol_1, :symbol_2]"

puts ""

puts "Strings, create multiple objects even if they share a value, are mutable, and
      are garbage collected when the system is done with the object."
puts "Example: strings = [\"string_1\", \"string_2\"]"

puts ""

a = []
a = {:key => 1}
puts "puts a['key'] gives us: #{a['key']}"
puts "puts a[:key] gives us: #{a[:key]}"

puts "Because key (the symbol) and 'key' (the string) are not equivalent."

puts ""

puts  "**Note: Rails has a class, HashWithIndifferentAccess, which acts like a
      Hash object, except it treats strings and symbols with the same values as
      equivalent when used as key names."
