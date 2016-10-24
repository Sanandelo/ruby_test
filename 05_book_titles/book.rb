class Book
# write your code here


	def title=(val)
		if val.include? " "
			arrTitle = val.split

			i = 0
			while i < arrTitle.length
				if arrTitle[i] == 'the' or arrTitle[i] == 'a' or arrTitle[i] == 'an' or arrTitle[i] == 'the' or arrTitle[i] == 'and' or arrTitle[i] == 'of' or arrTitle[i] == 'in' 

				else
				new_val = arrTitle[i].capitalize
				arrTitle[i] = new_val
				end

			i = i+1
			end
			firstWord = arrTitle[0].capitalize
			arrTitle[0] = firstWord
			val = arrTitle.join(" ")
		else
			val = val.capitalize
		end
		@title = val
	end
	def title
		@title
	end


end
