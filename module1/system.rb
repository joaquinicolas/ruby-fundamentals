puts "Using backtricks:"
res = %x(time /t)
puts res

puts "Using system: "
res = system "time /t"
puts res