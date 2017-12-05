require 'unirest'
p 'pick a place on the board'
message = ""
response = Unirest.get("localhost:3000/search")
board = response.body['board']
p message = response.body['message']

while message != 'You win!'
  p 'top'
  p board
  puts "guess a spot"
  guess = gets.chomp
  response = Unirest.get("http://localhost:3000/db_hunt?guess=#{guess}")
  p board = response.body['board']
  p message = response.body['message']
end

