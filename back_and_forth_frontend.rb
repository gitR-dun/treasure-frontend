require 'unirest'
p 'pick a place on the board'
message = ""
response = Unirest.get("localhost:3000/search")
board = response.body['board']
p message = response.body['message']

while message != 'You win!'
  p 'top'
  p board
  board_as_string = "#{board[0]}#{board[1]}#{board[2]}"
  puts "guess a spot"
  guess = gets.chomp
  response = Unirest.get("http://localhost:3000/back_and_forth_search?guess=#{guess}&board=#{board_as_string}")
  p board = response.body['board']
  p message = response.body['message']
end

