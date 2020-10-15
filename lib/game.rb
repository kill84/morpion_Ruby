require 'welcomepage'
class Game

  attr_accessor :current_player, :status, :board, :array_players

  def initialize # initialisation de la partie avec les 2 joueurs et leur symbole
    welcome = Welcome.new
    puts "Salut et bienvenue dans notre super jeu de morpion !"
    sleep (1.00)
    puts "Le morpion nécessite 2 joueurs"
    sleep (1.00)
    puts "Voyons voir, quel est le nom du premier joueur ?"
    print "> "
    p1_name = gets.chomp
    @player_1 = Player.new("#{p1_name}", " X ".blue.on_white)
    sleep (1.00)
    puts "OK merci, quel est le nom du deuxième joueur ?"
    print "> "
    p2_name = gets.chomp
    @player_2 = Player.new("#{p2_name}", " O ".red.on_white)
    sleep (1.00)
    puts "Ça roule, merci beaucoup ! Nous allons maintenant initialiser une nouvelle partie !"
    sleep (2.00)
    puts "#{p1_name} jouera avec les #{" X ".blue.on_white} et #{p2_name} avec les #{" O ".red.on_white}."
    sleep (1.50)
    puts "Que le jeu commence !!!"
    @board = Board.new
    @array_players = [@player_1, @player_2]
    $current_player = @array_players[0]
    $token = 1
  end

  def turn # permet de demander au joueur ce qu'il veut jouer et appliquer son choix
    @board.show
    @board.menu_choice
  end

  def check_token # pour savoir si on commence une nouvelle partie ou pas
      if $token == 1
        true
      else
        false
      end
  end

  def new_round # pour demander si on veut faire une nouvelle partie
    puts "Top ! Souhaitez-vous faire une nouvelle partie ? (oui/non, merci)"
    print "> "
    rep = gets.chomp
    until rep == "oui" || rep =="non, merci"
      puts "On t'avait dit de dire oui ou non, merci !"
      print "> "
      rep = gets.chomp
    end
      if rep == "oui"
        @board = Board.new
        $token = 1
      else
        sleep(1.50)
        puts""
        puts "Voilà !"
        sleep (1.00)
        puts""
        puts "Allez... OK."
        sleep (1.00)
        puts "A tantôt !"
        sleep(2.00)
        $token = 0
        puts""
      end
    end

  def is_the_game_stop? # pour déterminer si la partie arrive à la fin ou pas
    if board.is_victory? == false
      return false
    elsif board.is_victory? == nil
      return true
    else
      return true
    end
  end

  def end
    board.show_if_a_win
    if board.is_victory? == true
      puts "#{$current_player.name} a gagné !!! QUELLE PARTIE MAGNIFIQUE !!"
      sleep (1.35)
      require 'bananagif'
    else
      puts "Match nul, dommage !"
    end
  end

  def switch_turn # pour changer d'utilisateur à la fin du tour
    case $current_player
    when @player_1
      $current_player = @player_2
    when @player_2
      $current_player = @player_1
    end
  end

end
