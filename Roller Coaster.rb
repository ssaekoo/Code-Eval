def roller_coaster(line)
  my_string = ''
  counter = 0
  line.capitalize.split('').each do |x|
  	if x =~ /[a-zA-Z]/
  	  if counter % 2 == 0
  	  	my_string << x.upcase 
  	  	counter += 1
  	  else
  	  	my_string << x.downcase
  	  	counter += 1
  	  end
  	else
  	  my_string << x
  	end
  end
  my_string
end

ARGF.lines do |line|
  puts roller_coaster(line)
end