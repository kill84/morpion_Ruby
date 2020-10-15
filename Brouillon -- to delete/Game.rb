class Game < Player

  def initialize(player1, symbol1, player2, symbol2)
    @player1 = Player.new(player1, symbol1)
    @player2 = Player.new(player2, symbol2)
    @players = Array.new
    @players << @player1
    @players << @player2
    @new_board = Board.new
  end

  def is_still_ongoing?

  end

  def board_status
    @new_board.display_board
  end

  def cell_choice(choice)
    @new_board.cell_board(choice)
  end

end
