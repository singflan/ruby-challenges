require 'weatherboy'

puts "Please tell us your location using your 5-digit zipcode:  "
location = gets.chomp

def getWeather(location)
	
	weatherboy = Weatherboy.new(location)
	weath = weatherboy.current.weather
	temp = weatherboy.current.temp_f.to_s
	puts " The current weather is " + weath + " and the temperature is " + temp + "degrees Farhenheit."

end

def getForecast(location)
	forecast = Weatherboy.new(location)
	require 'date'
	today = Date.today
	date = [today, today+1, today+2, today+3, today+4]
	date.zip(forecast).each do |date, forecast|
		puts (date.strftime('%A') + ", " + date.strftime('%b') + ", " + date.strftime('%d') + ", " + date.strftime('%Y'))
		puts "The weather will be " + forecast.conditions.downcase + ", and the high will be " + forecast.high_f.to_s + " with a low of " + forecast.low_f.to_s + "."
		puts " "
	end
end


getWeather(location)
getForecast(location)


weatherboy.methods