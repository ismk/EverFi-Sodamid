
class Make_beer_pyramid

    def initialize(bonus, beer_price)
        @bonus = bonus
        @beer_price = beer_price

        @can = "[]"
        @result = []

        @num_of_beers_on_lvl = 1 # Initialize Variable
        @level = 1               # Initialize Variable
        @total_number_of_beers = 0

        @beercan_level_price = @beer_price
        @bonus -= @beer_price
    end

    def calc_beeramid
        while @bonus > @beercan_level_price
            # puts "Remaining Money: #{bonus}"
            # puts "Price this level: #{@beercan_level_price}"
            # puts "Number of beers on this level #{@num_of_beers_on_lvl}"

            track
            display_beers

            @level += 1
            @num_of_beers_on_lvl = @level * @level

            @beercan_level_price = @beer_price * @num_of_beers_on_lvl
            @bonus -= @beercan_level_price
        end
        final_result
    end

    def track
        @remaining = @bonus
        @total_number_of_beers += @num_of_beers_on_lvl
        @result << "Number of Beers on Level #{@level}: #{@num_of_beers_on_lvl}\n"
    end

    def display_beers
        cans_to_display = @can * (@num_of_beers_on_lvl / @level)
        puts cans_to_display.center(100)
    end

    def final_result
        puts @result
        puts ""
        puts "Total Number of Beers Used: #{@total_number_of_beers}"
        puts "Bonus Remaining: #{@remaining}"
    end
end

beeramid = Make_beer_pyramid.new(1000,1)

beeramid.calc_beeramid
