require 'weatherboy'

puts "Please tell us your location using your 5-digit zipcode:  "
location = gets.chomp

def getWeather(location)
	
	weatherboy = Weatherboy.new(location)
	weath = weatherboy.current.weather
	temp = weatherboy.current.temp_f.to_s
	puts " The current weather is " + weath + " and the temperature is " + temp + "."

end

getWeather(location)


