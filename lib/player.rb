class Player
  attr_accessor :name, :life_points

  # Initialise a new player with his name and 10 life points
  def initialize (name)
    @name = name
    @life_points = 10
  end

  # Give damage to the curent user / If the user has 0 life point it show a message that he loose
  def gets_damage (damage)
    @life_points = @life_points - damage
    if @life_points == 0 
      puts "le joueur #{self.name} a été tué!"
    end
  end

  # Give attacks from the current player to an other (in "player" argument)
  def attacks (player)
    damage = compute_damage
    puts "#{self.name} attaque #{player.name}"
    puts "il lui inflige #{damage} points de dommages"
    player.gets_damage(damage)
  end

  # Give random number to use in gets_damage function
  def compute_damage
    return rand(1..6)
  end

  # Show the life point of the current user
  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end

end

