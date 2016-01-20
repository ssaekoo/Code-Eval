def self_describing_number(line)
  num_count = line.each_with_object(Hash.new(0)){|x, h| h[x.to_i] += 1}
  line.each_with_index do |x, i|
    return 0 if x.to_i != num_count[i]
  end
  true
end

ARGF.lines do |line|
  puts self_describing_number(line.strip.split('').map(&:to_i))
end