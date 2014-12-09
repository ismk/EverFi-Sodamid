
class Make_beer_pyramid

    def initialize(bonus, beer_price)
        @bonus = bonus
        @beer_price = beer_price

        @can = "[]"
        @result = []
        @cans_to_display = []


        @num_of_beers_on_lvl = 1 # Initialize Variable
        @level = 1               # Initialize Variable
        @total_number_of_beers = 0
        @remaining = 0

        @beercan_level_price = @beer_price
        @bonus -= @beer_price
    end

    def calc_beeramid
        while @bonus > @beercan_level_price
            # puts "Remaining Money: #{bonus}"
            # puts "Price this level: #{@beercan_level_price}"
            # puts "Number of beers on this level #{@num_of_beers_on_lvl}"

            @remaining = @bonus
            @total_number_of_beers += @num_of_beers_on_lvl
            @result << "Number of Beers on Level #{@level}: #{@num_of_beers_on_lvl}\n"

            @cans_to_display << @can * (@num_of_beers_on_lvl / @level)

            @level += 1
            @num_of_beers_on_lvl = @level * @level

            @beercan_level_price = @beer_price * @num_of_beers_on_lvl
            @bonus -= @beercan_level_price
        end
    end


    def beer_pyramid
        @cans_to_display.each do |cans|
            puts cans.center(100)
        end
    end

    def num_of_levels
        @result.count
    end

    def beers_on_levels
        @result
    end

    def display
        beer_pyramid
        print "Number of Levels:"
        puts num_of_levels
        puts ""
        puts beers_on_levels
        puts ""
        puts "Total Number of Beers Used: #{@total_number_of_beers}"
        puts "Bonus Remaining: #{@remaining}"
    end

end

# beeramid = Make_beer_pyramid.new(5000,2)
# beeramid.calc_beeramid
# p beeramid.num_of_levels
