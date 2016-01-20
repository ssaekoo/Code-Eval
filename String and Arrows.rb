=begin
def string_and_arrows(line)
  (line.scan('<--<<') + line.scan('>>-->')).length
end
=end

def string_and_arrows(line)
  count = 0
  (line.length - 5).times do |x|
    if line[x...x+5] == '<--<<' || line[x...x+5] == '>>-->'
      count += 1
    end
  end
  count
end

ARGF.lines do |line|
	puts string_and_arrows(line)
end