require 'unirest'

system = "clear"
puts
puts "You are in the Dictionary App!"
puts
puts "=" * 64
puts

while true 
  puts "Please enter a word:"
  word = gets.chomp

  response = Unirest.get("http://api.wordnik.com:80/v4/word.json/#{word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

  definition = response.body[0]["text"]
  puts "+" * 72
  puts "The definition of #{word}: #{definition}."

  response = Unirest.get("http://api.wordnik.com/v4/word.json/#{word}/topExample?useCanonical=false&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

  top_example = response.body["text"]
  puts "-" * 72
  puts "An example of #{word}: #{top_example}."

  response = Unirest.get("http://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5")

  pronunciation = response.body[0]["raw"]
  puts "*" * 72
  puts "The pronunciation of #{word} is #{pronunciation}"

  puts "Enter q to quit, any other key to continue."
  input_option = gets.chomp
  
  if input_option == "q"
    system = "clear"
    puts "Thank you for using the Dictionary App! TTFN."
    break
  end
end
