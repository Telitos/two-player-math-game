module MathGame

  class Game

    def initialize
      puts "Enter player1's name: "
      input1 = gets.chomp.to_s

      player_1 = MathGame::Player.new(1, input1, 3)
      puts "Hello #{player_1.name}"

      puts "Enter player 2's name: "
      input2 = gets.chomp.to_s
      player_2 = MathGame::Player.new(2, input2, 3)
      puts "Hello #{player_2.name}"

      player_turn = 1

      while player_1.score > 0 and player_2.score > 0 do
        player = current_player(player_turn, [player_1, player_2])
        MathGame::Question.new(player)
        puts "#{player_1.name}: #{player_1.score}/3, #{player_2.name}: #{player_2.score}/3"
        if player_turn == 1
          player_turn += 1
        else
          player_turn -= 1
        end
      end

      winner([player_1, player_2])
    end

    def current_player(id, players_arr)
      players_arr.each do
        |player|
        if player.id == id
          return player
        end
      end
    end

    def winner(players_arr)
      players_arr.each do
        |player|
        if not player.score == 0
          puts "#{player.name} wins the game with a score of #{player.score}"
        end
      end
    end
  end
end