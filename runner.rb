require_relative 'beeramid'


def start
  system("clear")
  puts "------------------- Welcome to Beer Pyramid! -------------------\n"
  puts ""
  menu
end

def menu
  puts "\nInput Bonus Money and Beer Price (comma separated): or 'q' to quit"
  input = gets.chomp
  if input == "q"
    return 0
  else
    bonus_money, beer_price = input.split(",")

    game = Make_beer_pyramid.new(bonus_money.to_i,beer_price.to_i)
    game.calc_beeramid
    game.display
    menu
  end
end

start
