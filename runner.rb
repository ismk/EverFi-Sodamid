require_relative 'pepperamid'


def start
  system("clear")
  puts "------------------- Welcome to Dr.Pepper Pyramid! -------------------\n"
  puts ""
  menu
end

def menu
  puts "\nInput Bonus Money and Soda Price (comma separated): or 'q' to quit"
  input = gets.chomp
  if input == "q"
    return 0
  else
    bonus_money, soda_price = input.split(",")

    game = Make_soda_pyramid.new(bonus_money.to_i,soda_price.to_i)
    game.calc_sodamid
    game.display
    menu
  end
end

start
