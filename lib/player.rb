class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end
end
