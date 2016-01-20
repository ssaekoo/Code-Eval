def armstrong_numbers(line)
  (line.split('').map{|x| x.to_i**line.length}.inject(:+) == line.to_i).to_s.capitalize
end

ARGF.lines do |line|
  puts armstrong_numbers(line.strip)
end