def sum(array)
	suma_array=0;
	
	if (array.length==0 or array==nil)
		return 0;
	end
	array.each  do |x|
		suma_array+=x
	end;
	suma_array;
end

def max_2_sum(array)
	if (array.length==0 or array==nil)
		return 0;
	end
	if(array.length==1)
		return array[0];
	end
	max1=0;
	max2=0;
	
	array.sort!
	return array[array.length-1]+array[array.length-2]
	
end;

def sum_to_n?(array,n)
	if (array.length==1 or array.length==0 or array==nil)
	
	
		return false;
	end
	x=0;
	while(x<array.length)
		y=x+1;
		while (y<array.length) 
			if (array[x]+array[y]==n)
				puts array[x]
				puts array[y]
				return true;
			end
			y+=1;
		end
		x+=1;
	end
	
	return false;
end



def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant?(s)
	if(s.length==0)
		return false;
	end
	a=s.match(/^([aeiou]|\W)/i);
	return a==nil;
end
def binary_multiple_of_4?(s)
	res=s.match(/[^(10)]/)
	if(res!=nil or s.length==0)
		return false
	end
	
	s.reverse!
	base=2;
	exponente=0
	numero=0
	s.each_char do |x|
		d=x.to_i;
		numero+=(base**exponente) * d
		exponente+=1;
	end
	return numero%4==0;
	
end


class BookInStock
	@isbn;
	@price;
	attr_accessor :isbn;
	attr_accessor :price;
	
	def initialize(isbn,price1)
		price=price1.to_f
		raise ArgumentError, 'Argument is not String' unless isbn.is_a? String;
		raise ArgumentError, 'Wrong number of isbn' unless isbn.length>0;
		raise ArgumentError, 'Argument is not Float' unless price.is_a? Float;
		raise ArgumentError, 'Argument in not a valid price' unless price>0;
		@isbn=isbn;
		@price=price;
	end
	
	def price_as_string
		raise ArgumentError, 'Argument is not Float' unless price.is_a? Float;

		return "$"+sprintf('%.2f', @price)
		
	end
end
