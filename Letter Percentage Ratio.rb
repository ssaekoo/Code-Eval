def letter_percentage_ratio(line)
  uppercase = sprintf('%.2f', (line.scan(/[A-Z]/).length.to_f / line.length.to_f) * 100)
  lowercase = sprintf('%.2f', line.scan(/[a-z]/).length.to_f / line.length.to_f * 100)
  return "lowercase: #{lowercase} uppercase: #{uppercase}"
end

ARGF.lines do |line|
  puts letter_percentage_ratio(line.strip)
end