def multiplication_table(n)
   (n..n*12).step(n).to_a.map(&:to_s)
end

(1..12).each do |x| 
	myStr = x
	myArr = multiplication_table(x)
	(1..11).each {|y| myStr << ' ' * (4 - myArr[y].length) + myArr[y]}
	puts myStr
end