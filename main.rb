require './player.rb'
require './game.rb'
require './question.rb'

puts "Welcome to HyperGame!"
puts "Press Enter to start a new game"
gets.chomp

MathGame::Game.new()

puts "-----Game Over!-----"
puts "Good bye!"
