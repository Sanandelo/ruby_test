#write your code here
def echo var
	var
end

def shout var
	var.upcase!
	var
end

def repeat var1 , var2=2
	if var2 == 1
		return var1 + " " + var1
	else
		result = (var1 + " ") * var2
		return result.chop
	end

end

def start_of_word var1 , var2
	result = var1.slice(0..var2-1)
	result
end

def first_word sentence
	result = sentence.split
	result[0]
end

def	titleize title
	result = title.split
	result.each do |variable|
		if variable != "and" and variable != "or" and variable != "the" and variable != "over"
		    variable.capitalize!
		end
	end
	result[0].capitalize!
	newres = result.join(" ")
	return newres
end
