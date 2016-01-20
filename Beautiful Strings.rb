def convert_to_num(num, index)
	num * (26-index)
end

def beautiful_string(line)
	char_hash = line.gsub(/[^A-Za-z]+/i, '').downcase.split('').each_with_object (Hash.new(0)){|char, count| count[char] += 1}
	char_counts = char_hash.sort_by(&:last).reverse
	char_counts.each_with_index.map{|char_num, index| convert_to_num(char_num[1], index)}.inject(:+)
end

ARGF.lines do |line|
  puts beautiful_string(line)
end