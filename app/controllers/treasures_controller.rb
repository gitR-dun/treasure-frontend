class TreasuresController < ApplicationController
  $board = ['-', '-', '-']
  $treasure = 1
  def look
    message = "make a guess"
    if params['guess'].to_i == $treasure
      message = 'You won'
      $board = ['-', '-', '-']
    elsif params['guess']
      $board[params['guess'].to_i] = 'X'
    end
    render json: {message: message, board: $board}
  end
end
