def compare_points(line)
  direction = ''
  x1, y1, x2, y2 = line.split(' ').map(&:to_i)
  return "here" if x1 == x2 && y1 == y2
  if y2 > y1
  	direction << 'N'
  elsif y1 > y2
  	direction << 'S'
  end
  if x2 > x1
    direction << 'E'
  elsif x1 > x2
    direction << 'W'
  end
  direction
end

ARGF.lines do |line|
  puts compare_points(line.strip)
end