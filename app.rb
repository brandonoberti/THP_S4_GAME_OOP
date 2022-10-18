require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def fight (player1, player2)
# Attacks continue if the 2 users style has life point
 while player1.life_points > 0 && player2.life_points >0
    puts "here is the state of each players"
    puts "\n"
    puts player1.show_state
    puts player2.show_state


    puts "Let's move on to the attack phase:"
    puts "\n"
    player1.attacks(player2)
    if player2.life_points <= 0
        break
      end

    player2.attacks(player1)
    if player2.life_points <= 0
        break
      end
    end
end

def perform
    player1 = Player.new ("Josiane")
    player2 = Player.new ("José")
    fight(player1, player2)
end
  
perform
  