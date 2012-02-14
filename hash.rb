# Read a file with key, value pair and put it into a hash
hash = {}
File.open("hash.data") do |fp|
  fp.each do |line|
    key, value = line.chomp.split("\t")
    hash[key] = value
  end
end

puts hash
puts hash["key1"]
puts hash["key2"]