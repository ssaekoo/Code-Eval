def major_element(line)
  largest_element = line.each_with_object(Hash.new(0)){|num, count| count[num] += 1}.sort_by{|k,v| v}.reverse[0]
  largest_element[1] > (line.length / 2) ? largest_element[0] : 'None'
end

ARGF.lines do |line|
  puts major_element(line.strip.split(','))
end