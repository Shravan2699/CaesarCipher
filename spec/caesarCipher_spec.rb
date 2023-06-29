require './lib/caesarCipher' 


describe NewStr do
  describe "#caesar_cipher" do
    it "returns -1 if the input is non-String class" do
      game = NewStr.new
      expect(game.caesar_cipher(4321,2)).to eq(-1)
    end

    it "returns the original string if the shift is 0" do
      game = NewStr.new
      expect(game.caesar_cipher('aaa',0)).to eq('aaa')
    end

    it "returns the correct character even if the shift is negative" do
      game = NewStr.new
      expect(game.caesar_cipher('aaa',-1)).to eq('zzz')
    end

    it "returns the characters as per the shift provided as argument when the shift is less than 26" do
      game = NewStr.new
      expect(game.caesar_cipher('aaa',8)).to eq('iii')
    end

    it "returns the characters as per the shift provided as argument when the shift is more than 26" do
      game = NewStr.new
      expect(game.caesar_cipher('aaa',27)).to eq('bbb')
    end    
  end 
end
