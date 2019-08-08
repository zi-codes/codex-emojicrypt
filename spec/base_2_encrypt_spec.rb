require 'base_anything'
require 'emojis'

describe Base do

  before(:each) do
    @base = Base.new(["0","1"])
  end

  describe "base 2" do
    it "Can encrypt a number" do
      expect(@base.encrypt(0)).to eq "0"
      expect(@base.encrypt(1)).to eq "1"
      expect(@base.encrypt(2)).to eq "10"
      expect(@base.encrypt(5)).to eq "101"
      expect(@base.encrypt(10)).to eq "1010"
      expect(@base.encrypt(16)).to eq "10000"
      expect(@base.encrypt(34)).to eq "100010"
    end

  end


end
