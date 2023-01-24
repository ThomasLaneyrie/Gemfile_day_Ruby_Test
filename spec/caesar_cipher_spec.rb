require_relative '../lib/caesar_cipher'

describe "My program caesar_cipher" do
  it "should return a new code when I give a string and a number, by shifting the alhphabet according to the number of letter ask" do
    expect(caesar_cipher("what a string!", 5)).to eq("bmfy f xywnsl!")
  end
  it "should return a new code when I give a string and a number, by shifting the alhphabet according to the number of letter ask" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
  it "should return a new code when I give a string and a number, by shifting the alhphabet according to the number of letter ask" do
    expect(caesar_cipher("what a string!", 6)).to eq("cngz g yzxotm!")
  end
  it "should not be OK to have another thing that a String for var 1" do
    expect(caesar_cipher(0, 5)).to eq("Vous n'avez pas rentré une string en variable n°1")
  end
  it "should not be OK to have another thing that an Integer for var 2" do
    expect(caesar_cipher("what a string!", "salut je veux faire planter ton programme")).to eq("Vous n'avez pas rentré un Integer en variable n°2")
  end
end