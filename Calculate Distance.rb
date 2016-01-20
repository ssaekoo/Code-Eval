def calculate_distance(line)
  (((line[0] - line[2])**2 + (line[1] - line[3])**2)**0.5).to_i
end

ARGF.lines do |line|
  puts calculate_distance((line.gsub /([(),])/, '').split().map(&:to_i))
end