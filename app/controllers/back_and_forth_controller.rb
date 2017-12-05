class BackAndForthController < ApplicationController
  def look
    treasure_location = 2
    my_message = "make a guess"
    board = ['-', '-', '-']
    # check if the guess is correct
    if params['guess'] && treasure_location == params['guess'].to_i
      my_message = "You win!"
    else
      if params['board']
        guesses_array = params['board'].split("")
        guesses_array.each_with_index do |letter, i|
          board[i] = letter
        end
      end
      board[params['guess'].to_i] = 'X'
    end



    render json: {message: my_message, board: board}
  end
end
