require 'rspec'
require_relative 'beeramid'

describe "Display Pyramid of Beers!" do

  context "for 500 bonus and beer costing 5" do
    let(:beeramid1) {Make_beer_pyramid.new(500,5)}

    it 'should return 5 levels' do
      beeramid1.calc_beeramid
      expect(beeramid1.num_of_levels).to eq 5
    end
  end

  context "for 1000 bonus and beer costing 1" do
    let(:beeramid2) {Make_beer_pyramid.new(1000,1)}

    it 'should return 13 levels' do
      beeramid2.calc_beeramid
      expect(beeramid2.num_of_levels).to eq 13
    end
  end

  context "for 650 bonus and beer costing 3" do
    let(:beeramid3) {Make_beer_pyramid.new(650,3)}

    it 'should return 7 levels' do
      beeramid3.calc_beeramid
      expect(beeramid3.num_of_levels).to eq 7
    end
  end

  context "for 5000 bonus and beer costing 2" do
    let(:beeramid4) {Make_beer_pyramid.new(5000,2)}

    it 'should return 18 levels' do
      beeramid4.calc_beeramid
      expect(beeramid4.num_of_levels).to eq 18
    end
  end
end
