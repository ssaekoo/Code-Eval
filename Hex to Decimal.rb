def hex_to_decimal(hex)
	hex.to_i(16)
end

File.open(ARGV[0]).each_line do |line|
	puts hex_to_decimal(line)
end