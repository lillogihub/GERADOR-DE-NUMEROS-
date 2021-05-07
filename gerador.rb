#CREATE BY C0ALA 
#www.github.com/C04LA
#instagram: bielstellato

inicio = Time.now
999999999.times do |ar|
	
	valor = 0
	total = 0
	valor_segundo = 0
	total_segundo = 0

	digito_1 = [10,9,8,7,6,5,4,3,2]


	
	ccc = Array.new(9) {| i | i = rand(10)}

	
	9.times do |val|
		total = digito_1[val] * ccc[val]
		
		valor += total
	end

	
	primeiro_digito = valor%11
	

	if primeiro_digito < 2
		primeiro_digito = 0
	else
		primeiro_digito = 11 - primeiro_digito
	end

	
	digito_1.push(11).sort!.reverse!


	ccc.push(primeiro_digito)



	10.times do |value|
		total_segundo = digito_1[value] * ccc[value]
		
		valor_segundo += total_segundo
	end

	segundo_digito = valor_segundo%11

	if segundo_digito < 2
		segundo_digito = 0
	else
		segundo_digito = 11 - segundo_digito
	end

	
	ccc.pop

	puts ar
end


fim = Time.now

puts "tempo #{inicio - fim}"
