require 'pry'

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :value, :id

  def initialize(name)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value = "   "
    @id = name
  end

  def show_one_case
    puts "
    -------------------
    |                 |
    |                 |
    |                 |
    |      #{@value}         |
    |                 |
    |                 |
    |                 |
    -------------------
    "
  end

end
