require 'rspec'
require_relative 'pepperamid'

describe "Display Pyramid of sodas!" do

  context "for 500 bonus and soda costing 5" do
    let(:sodamid1) {Make_soda_pyramid.new(500,5)}

    it 'should return 5 levels' do
      sodamid1.calc_sodamid
      expect(sodamid1.num_of_levels).to eq 5
    end
  end

  context "for 1000 bonus and soda costing 1" do
    let(:sodamid2) {Make_soda_pyramid.new(1000,1)}

    it 'should return 13 levels' do
      sodamid2.calc_sodamid
      expect(sodamid2.num_of_levels).to eq 13
    end
  end

  context "for 650 bonus and soda costing 3" do
    let(:sodamid3) {Make_soda_pyramid.new(650,3)}

    it 'should return 7 levels' do
      sodamid3.calc_sodamid
      expect(sodamid3.num_of_levels).to eq 7
    end
  end

  context "for 5000 bonus and soda costing 2" do
    let(:sodamid4) {Make_soda_pyramid.new(5000,2)}

    it 'should return 18 levels' do
      sodamid4.calc_sodamid
      expect(sodamid4.num_of_levels).to eq 18
    end
  end
end
