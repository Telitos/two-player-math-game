module MathGame

  class Question

    def initialize (player)
      random_number1 = Random.rand(0...10)
      random_number2 = Random.rand(0...10)
      answer = random_number1 + random_number2

      puts "----- New Turn -----"

      puts "#{player.name}: What does #{random_number1} plus #{random_number2} equal?"
      print "> "
      user_answer = gets.chomp.to_i

      if user_answer == answer
        puts "Well done!"
      else puts "Com'on, my grandma counts better than that! You loose one life for that!"
        player.score = player.score - 1
      end
    end
  end
end
