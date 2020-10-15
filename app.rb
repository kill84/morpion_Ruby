require 'pry'
require 'bundler'
Bundler.require
$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'board'
require 'board_case'
require 'game'
require 'player'
require 'show'



class Application

  def perform
    game = Game.new # pour lancer un nouveau jeu
    while game.check_token == true # check si les token (qui permettent de relancer une partie) sont bien À 1. Sinon fin du jeu.
      while game.is_the_game_stop? == false # check les conditions pour arrêter le jeu (un gagnant ou bien plateau rempli)
        system('clear') # permet de jouer à chaque fois sur un terminal vide, avec impression de remplir le tableau au fur et À mesure
        game.turn # permet de demander au joueur ce qu'il veut jouer et appliquer son choix
        game.switch_turn # permet de changer d'utilisateur
      end
      game.switch_turn # permet de changer d'utilisateur pour montrer le bon gagnant
      game.end # permet de montrer le bon gagnant (ou match nul)
      game.new_round # permet de demander si on veut lancer une nouvelle partie
    end
  end

end

Application.new.perform
