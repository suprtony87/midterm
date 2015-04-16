require 'pry'

# Yelp has its own Gem to use
require 'yelp'

# create a new client to request info from the Yelp API

client = Yelp::Client.new({ consumer_key:"uuYz6DWGddrZyXdDUSSw4A",
                            consumer_secret:"WFurywO8xzauafya-NuEtZGB-uQ",
                            token:"dZhxnITA8wfHmHVDaxqYWHqpR0funon3",
                            token_secret:"GqAWr69xnPGScHApidj7zn8vveM"
                          })


puts
puts
puts "Welcome to datemaster".upcase
puts "So you have a date and don't have a clue where to go??"
puts "Fear not! We can help. We just need to know a few things first"
puts "Answer a few basic questions and we will give you 10 great choices."
puts

puts "Please tell us the city, neighborhood, or zipcode you are looking to go out in:"
city = gets.strip
puts

puts "Now tell us what type of food/venue that you are looking for."

cuisine = gets.strip
puts

puts "How many results do you want to see? Feeling adventerous, just go to the first one!"
number = gets.strip.to_i
puts


results = client.search("#{city}", { term: "#{cuisine}" })

result_names = results.businesses

# results[0..10].each do |result|

#   name = result.name

# end

count = 0
puts "Here are your #{number} random first date results:"
result_names.first(number).each do |result_name|
  count = count + 1
  puts
  puts "Option # #{count}"
  puts "Restaurant name: #{result_name.name}"
  puts "Address: #{result_name.location.display_address.join(", ")}"
  puts "Rating: #{result_name.rating}"
  puts "Categories: #{result_name.categories.join(", ")}"
  puts "Call to make a reservation: #{result_name.display_phone}"
  puts
  puts "What people are saying: #{result_name.snippet_text}"
  puts
  puts "Read more ratings: #{result_name.url}"
  puts
  puts"*****************************************************************************************************************"
end

puts
puts "I hope we were able to help!"
puts "Good Luck Tiger!!!"
puts
puts
puts


