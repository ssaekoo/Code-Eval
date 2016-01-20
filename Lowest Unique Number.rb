def lowest_unique_number(line)
   numbers = line.split(' ').map(&:to_i)
   counts = (numbers.each_with_object (Hash.new(0)) {|num, count| count[num] += 1})
   lowest_unique = counts.select {|x,y| y == 1}.min
   lowest_unique ? numbers.index(lowest_unique[0]) + 1 : 0
end

File.open(ARGV[0]).each_line do |line|
   puts lowest_unique_number(line)
end