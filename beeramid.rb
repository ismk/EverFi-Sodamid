
class Make_beer_pyramid

    def initialize
        @can = "[]"
        @result = []

        @num_of_beers_on_lvl = 1
        @level = 1
        @total_beers = 0
        @beercan_level_price = 0
    end

    def calc_beeramid(ref_bonus, beercan_price)
        @beercan_price = beercan_price
        until ref_bonus <= @beercan_level_price
            puts ref_bonus

            @num_of_beers_on_lvl = @level * @level
            @total_beers += @num_of_beers_on_lvl

            display_beers

            @beercan_level_price = @beercan_price * @num_of_beers_on_lvl
            ref_bonus -=  @beercan_level_price
            @level += 1
        end
        final_result
    end

    def display_beers
        cans_to_display = @can * (@num_of_beers_on_lvl / @level)
        puts cans_to_display.center(200)
        @result << "Number of Beers on Level #{@level}: #{@num_of_beers_on_lvl}\n"
    end

    def final_result
        puts @result
        puts ""
        puts "Total Number of Beers Used: #{@total_beers}"
        puts "Total Referal Money Used: #{@total_beers * @beercan_price}"
    end
end

beeramid = Make_beer_pyramid.new

beeramid.calc_beeramid(1000,2)
