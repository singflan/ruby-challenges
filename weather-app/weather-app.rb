require 'yahoo_weatherman'

puts "Please tell us your location:  "
location = gets.chomp
String weather
def getWeather(location)
	
	client = Weatherman::Client.new

	weather = client.lookup_by_location('#{location}').condition['text']

	return weather
end

puts "The weather today in #{location} is #{weather}."

