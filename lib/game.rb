
class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :board, :array_players
  def initialize
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

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board).
    #Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné,
    #passe au joueur suivant si la partie n'est pas finie.
    @board.show
    @board.menu_choice
  end

  def check_token
      if $token == 1
        true
      else
        false
      end
  end

  def new_round
    puts "Top ! Souhaitez-vous faireune nouvelle partie ? (Répondez oui ou non)"
    print "> "
    rep = gets.chomp
      if rep == "oui"
    @board = Board.new
    $token = 1
  elsif rep == "non"
    puts "OK ! À tantôt !"
    $token = 0
  else
    puts "On t'avait dit de dire oui ou non !"
    $token = 0
  end
  end


  def is_the_game_stop?
    if board.is_victory? == false
      return false

    elsif board.is_victory? == nil
      return true
    else
      return true
    end
  end

  def end
    board.show
    if board.is_victory? == true
    puts "#{$current_player.name} a gagné bande de ba**** !!!"
    sleep (1.35)
    require 'bananagif'
    else
      puts "Match nul bitches"
    end
  end

  def switch_turn
    case $current_player
    when @player_1
      $current_player = @player_2
    when @player_2
      $current_player = @player_1
    end
  end

end
