def rightmost_char(line)
   x = line.strip.split(',')
   position = x[0].rindex(x[1])
   position ? position : -1
end

File.open(ARGV[0]).each_line do |line|
    puts rightmost_char(line)
end