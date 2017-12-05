require 'unirest'
p 'pick a place on the board'
message = ""
response = Unirest.get("localhost:3000/search")
board = response.body['board']
p message = response.body['message']

while message != 'You won'
  p 'top'
  puts board
  puts "guess a spot"
  guess = gets.chomp
  response = Unirest.get("localhost:3000/search?guess=#{guess}")
  p board = response.body['board']
  p message = response.body['message']
end

