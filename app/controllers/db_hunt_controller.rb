class DbHuntController < ApplicationController
  def hunt
    treasure = Treasure.first

    # grab map from db
    # check if person got it right
    # if they did, tell them well done
    # if they didn't, show them where they guessed with an X

    my_message = "Make a guess"
    if params['guess'] && treasure.location == params['guess'].to_i
      my_message = "You win!"
      treasure.update(position_one: '-', position_two: '-', position_three: '-')
    elsif params['guess']
      if params['guess'].to_i == 0
        treasure.position_one = 'X'
      elsif params['guess'].to_i == 1
        treasure.position_two = 'X'
      elsif params['guess'].to_i == 2
        treasure.position_three = 'X'
      end
      treasure.save
    end
    board = [treasure.position_one, treasure.position_two, treasure.position_three]
    render json: {message: my_message, board: board}
  end
end
