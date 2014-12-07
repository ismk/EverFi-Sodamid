
class Make_beer_pyramid

    def initialize
        @can = "[]"
        @result = []

        @num_of_beers_on_lvl = 1 # Initialize Variable
        @level = 1               # Initialize Variable
        @total_beers = 0
        @total_number_of_beers = 0
    end

    def calc_beeramid(bonus, beercan_price)

        @beercan_price = beercan_price
        @beercan_level_price = @beercan_price
        bonus -= @beercan_price

        while bonus > @beercan_level_price
            # puts "Remaining Money: #{bonus}"
            # puts "Price this level: #{@beercan_level_price}"
            # puts "Number of beers on this level #{@num_of_beers_on_lvl}"


            display_beers
            @level += 1
            @num_of_beers_on_lvl = @level * @level
            @total_beers += @num_of_beers_on_lvl



            @beercan_level_price = @beercan_price * @num_of_beers_on_lvl
            bonus -= @beercan_level_price
        end
        final_result
    end

    def display_beers
        cans_to_display = @can * (@num_of_beers_on_lvl / @level)
        puts cans_to_display.center(200)
        @total_number_of_beers += @num_of_beers_on_lvl
        @result << "Number of Beers on Level #{@level}: #{@num_of_beers_on_lvl}\n"
    end

    def final_result
        puts @result
        puts ""
        puts "Total Number of Beers Used: #{@total_number_of_beers}"
        puts "Total Referal Money Used: #{@total_number_of_beers * @beercan_price}"
    end
end

beeramid = Make_beer_pyramid.new

beeramid.calc_beeramid(1000,1)
