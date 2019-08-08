require 'base_anything'
require 'emojis'

describe Base do

  before(:each) do
    @base = Base.new(["0","1","2","3","4","5","6","7","8","9"])
  end

  describe "base 10" do
    it "can find the find_highest_power" do
      expect(@base.find_highest_power(210)).to eq 100
      expect(@base.find_highest_power(3910)).to eq 1000
      expect(@base.find_highest_power(23910)).to eq 10000
      expect(@base.find_highest_power(2000)).to eq 1000
    end

    it "can find how many units there are of the highest power" do
      expect(@base.how_many_units(power:100,number:910)).to eq 9
      expect(@base.how_many_units(power:10,number:84)).to eq 8
      expect(@base.how_many_units(power:1000,number:3000)).to eq 3
    end
    #
    it "can reduce a number (take off the highest set of place value)" do
      expect(@base.reduce(power: 100, number: 910)).to eq 10
      expect(@base.reduce(power: 1000, number: 1111)).to eq 111
      expect(@base.reduce(power: 1000, number: 9003)).to eq 3
    end

    # it "can find the first symbol" do
    #   expect(@base.get_symbol(100,910)).to eq "9"
    #   expect(@base.get_symbol(1000,1345)).to eq "1"
    #   expect(@base.get_symbol(1000,2304)).to eq "2"
    # end

    it "Can encrypt a number" do
      expect(@base.encrypt(945)).to eq "945"
      expect(@base.encrypt(9)).to eq "9"
      expect(@base.encrypt(901)).to eq "901"
      expect(@base.encrypt(905)).to eq "905"
      expect(@base.encrypt(10005)).to eq "10005"
      expect(@base.encrypt(0)).to eq "0"
      expect(@base.encrypt(1)).to eq "1"
      expect(@base.encrypt(11)).to eq "11"
      expect(@base.encrypt(20)).to eq "20"
      expect(@base.encrypt(10)).to eq "10"
    end

  end


end
