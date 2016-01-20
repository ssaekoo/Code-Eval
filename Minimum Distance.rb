def minimum_distance(line)
  line.shift
  lowest = line.sort.last
  (0...line.length).each do |x|
    temp_arr = []
    (0...line.length).each do |y|
      temp_arr << (line[x] - line[y]).abs unless x == y
    end
    lowest = temp_arr.inject(:+) if temp_arr.inject(:+) < lowest
  end
  lowest
end

ARGF.lines do |line|
  puts minimum_distance(line.strip.split().map(&:to_i))
end