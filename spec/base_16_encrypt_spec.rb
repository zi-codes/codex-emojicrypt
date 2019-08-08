require 'base_anything'
require 'emojis'

describe Base do

  before(:each) do
    @base = Base.new(["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"])
  end

  describe "base 16" do
    it "Can encrypt a number" do
      expect(@base.encrypt(15)).to eq "F"
      expect(@base.encrypt(1)).to eq "1"
      expect(@base.encrypt(16)).to eq "10"
      expect(@base.encrypt(36)).to eq "24"
      expect(@base.encrypt(94)).to eq "5E"
      expect(@base.encrypt(1000)).to eq "3E8"
      expect(@base.encrypt(64206)).to eq "FACE"
    end

  end


end
