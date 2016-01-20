def modulo(myArr)
   return myArr[0] if myArr[1] > myArr[0]
   myArr[0] - (myArr[1]..myArr[0]).step(myArr[1]).max
end

File.open(ARGV[0]).each_line do |line|
   puts modulo(line.split(',').map(&:to_i))
end