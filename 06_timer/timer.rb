class Timer
  #write your code here
  	@seconds
  def initialize
  	@seconds = 0
  end

  def seconds=(val)	
  	@seconds =val
 
  end 
  def seconds
  	@seconds
  end



  def time_string 
  	rest = @seconds
  	houres = rest /( 60 * 60) 
  	if houres >=1
  		rest  = rest - (houres * 3600)
  	end
  	minutes = rest/ 60
  	if minutes >=1
  		rest = rest - (minutes * 60)
  	end
  	seconds = rest
  	result = padded(houres) + ":" + padded(minutes) + ":" + padded(seconds)
  	return result
  end



  def padded number
  	if number >= 0 and number < 10
  	return '0' + number.to_s
  else 
  	return number.to_s
  end
end
end


	