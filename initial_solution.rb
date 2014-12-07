def make_beeramid(ref_bonus, beercan_price)
    can = "[]"

    num_of_beers_on_lvl = 1
    level = 1
    total_beers = 0
    beercan_level_price = 0

    until ref_bonus <= beercan_level_price

        num_of_beers_on_lvl = level * level
        total_beers += num_of_beers_on_lvl
        cans_to_display = can * (num_of_beers_on_lvl / level)
        puts cans_to_display.center(200)
        # puts "Number of Beers on level: #{num_of_beers_on_lvl}"

        beercan_level_price = beercan_price * num_of_beers_on_lvl
        ref_bonus -=  beercan_level_price
        level += 1
    end

    puts "Number of levels: #{level-1}"
    puts "Total Beer Cans: #{total_beers}"
end


make_beeramid(100,5)
