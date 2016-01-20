def fibonacci(n)  
   return 0 if n == 0
   y, x, n = 0, 1, n - 1

   while n > 0
      y, x, n = x, x + y, n - 1
   end
   x
end

File.open(ARGV[0]).each_line do |line|
   puts fibonacci(line.to_i)
end