class Board
  attr_accessor :board, :size, :mapping
  def initialize(size=3)
    @board = []
    size.times do
    board << ["vide"] * size
    end
  end

  def show_board
    i = 0
    @board.each do
      print "#{board[i]}\n"
      i += 1
    end
  end

  def verify_box(player)
    @board.each do |row|
      row.each do |cell|
        if cell == nil
          cell="vide"
        else
          cell = player.letter
        end
        print "#{cell}\n"
      end
    end
  end

  def fill_box(player_choice)
    mapping = {
      A1: @board[0][0],
      A2: @board[0][1],
      A3: @board[0][2],
      B1: @board[0][0],
      B2: @board[0][1],
      B3: @board[0][2],
      C1: @board[0][0],
      C2: @board[0][1],
      C3: @board[0][2],
    }
    # puts mapping{player_choice.to_sym}
    #mapping{player_choice.to_sym} = "0"
    # @board[mapping[player_choice.to_sym]] = "O"
  end

  def box_is_empty?

  end

  def clear

  end

end
