#write your code here
def add first_a, second_a
	result_a = first_a+second_a
	result_a
end

def subtract first_s, second_s
	result_s = first_s-second_s
	result_s
end

def sum array
	if array.count == 0
		return 0
	end
	result_arr = 0
	i = 0 
	while i<array.length 
		result_arr = result_arr + array[i]
		i = i + 1
	end
	result_arr
end
	
def multiply first_m, second_m
	result_m = first_m * second_m
	result_m
end

def pow first_p, second_p
	result_p = 0
	second_p.times do
		result_p = first_p * first_p
	end
	result_p
end 

def fact numb 
		if numb == 1 or numb == 0
			result = 1
		else
			result = numb  * fact(numb-1)
		end
	result
end