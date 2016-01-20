def multiples(n, x)
   y = [*(x..n).step(x)].max
   y < n ? y + x : y
end

File.open(ARGV[0]).each_line do |line|
   x = line.split(',').map(&:to_i)
   puts multiples(x[0], x[1])
end