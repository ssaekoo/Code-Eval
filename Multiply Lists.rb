def multiply_lists(input)
   input[0].each_with_index.map {|x, i| x * input[1][i]}.map(&:to_s).join(' ')
end

File.open(ARGV[0]).each_line do |line|
   input = line.split(' | ').map{|x| x.split(' ').map(&:to_i)}
   puts multiply_lists(input)
end