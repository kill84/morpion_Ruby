
class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    attr_accessor :array_board_case

  def initialize
    #TO DO :
    # for i in 1..9 do
    #   box = BoardCase.new("#{i}")
    #   @array << box
    # end

    @A1 = BoardCase.new("a1")
    @A2 = BoardCase.new("a2")
    @A3 = BoardCase.new("a3")
    @B1 = BoardCase.new("b1")
    @B2 = BoardCase.new("b2")
    @B3 = BoardCase.new("b3")
    @C1 = BoardCase.new("c1")
    @C2 = BoardCase.new("c2")
    @C3 = BoardCase.new("c3")
    @array_board_case = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]
    @is_first_player = true
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    end

  def menu_choice
    choice = gets.chomp
    @array_board_case[choice.to_i - 1].value = $current_player.value
  end

  def is_victory?
        if (@A1.value == @A2.value && @A1.value == @A3.value && @A1.value != "   ") || (@B1.value == @B2.value && @B1.value == @B3.value && @B1.value != "   ") || (@C1.value == @C2.value && @C1.value == @C3.value && @C1.value != "   ") || (@A1.value == @B2.value && @A1.value == @C3.value && @A1.value != "   ") || (@A3.value == @B2.value && @A3.value == @C1.value && @A3.value != "   ") || (@A1.value == @B1.value && @A1.value == @C1.value && @C1.value != "   ") || (@A2.value == @B2.value && @A2.value == @C2.value && @C2.value != "   ") || (@A3.value == @B3.value && @A3.value == @C3.value && @C3.value != "   ")
          return true
        elsif @A1.value != "   " && @A2.value != "   " && @A3.value != "   " && @B1.value != "   " && @B2.value != "   " && @B3.value != "   " && @C1.value != "   " && @C2.value != "   " && @C3.value != "   "
          return nil
        else
          return false
        end
  end

  def show

    puts ""
    puts " #{@array_board_case[0].value} | #{@array_board_case[1].value} | #{@array_board_case[2].value}   ||   1 | 2 | 3 "
    puts "  -------------       ------------- "
    puts " #{@array_board_case[3].value} | #{@array_board_case[4].value} | #{@array_board_case[5].value}   ||   4 | 5 | 6 "
    puts "  -------------       ------------- "
    puts " #{@array_board_case[6].value} | #{@array_board_case[7].value} | #{@array_board_case[8].value}   ||   7 | 8 | 9 "
    puts""

  end


end
