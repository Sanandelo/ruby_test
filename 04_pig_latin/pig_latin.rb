#write your code here
def translate str
	def isVowel char
		if char == "a" or char == "e" or char == "i" or char == "o" or char == "u"
	    	return true
		end
	end

	

	def pigLat string
		word_arr = string.split(//)
		if isVowel(word_arr[0])
			result = word_arr.join + "ay"
		elsif
			if (not isVowel(word_arr[1]) and not isVowel(word_arr[2])) or (word_arr[1] == "q" and word_arr[2] == "u" and not isVowel(word_arr[0]))
				firstlet = word_arr[0]
				seconlet = word_arr[1]
				thirdlet = word_arr[2]
				word_arr.push(firstlet, seconlet,thirdlet)
				3.times { word_arr.delete_at(0)}
				result = word_arr.join + "ay"
			elsif not isVowel(word_arr[1]) or (word_arr[0] == "q" and word_arr[1] == "u")
				firstlet = word_arr[0]
				seconlet = word_arr[1]
				word_arr.push(firstlet, seconlet)
				2.times {word_arr.delete_at(0)}
				result = word_arr.join + "ay"
			else
				firstlet = word_arr[0]
				word_arr.push(firstlet)
				word_arr.delete_at(0)
				result = word_arr.join + "ay"
			end
		end
		return result
	end


	if str.include? " "
		arrsent = str.split
	i = 0
	while i< arrsent.length

		newElem = pigLat(arrsent[i])
	 	arrsent[i] = newElem
		i = i+1
	end
		main_result = arrsent.join(" ")
	else
		main_result = pigLat(str)
	end



	return main_result
end