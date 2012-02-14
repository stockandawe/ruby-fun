# Read a filename from cmd line and print how many times each word occurs in the file

unless ARGV[0]
  puts "\nYou need to include a file to test."
  puts "Usage: #{$0} <filename>"
  exit
end

file = ARGV[0]

hash1 = Hash.new(0)
File.open(file) do |fp|
  fp.each do |line|
    a1 = line.chomp.split(" ") 
    a1.each do |word|
      hash1[word] += 1
    end
  end
end

hash2 = hash1.sort_by {|k,v| v}.reverse

for word in (0..9)
    puts "Word \"#{hash2[word][0]}\" occurs #{hash2[word][1]} times"
end