def trick_or_treat(line)
  my_hash = {}
  line.gsub(' ', '').split(',').each do |pair|
    key,value = pair.split(/:/)
    my_hash[key] = value
  end
  my_hash
end

ARGF.lines do |line|
  puts trick_or_treat(line)
end