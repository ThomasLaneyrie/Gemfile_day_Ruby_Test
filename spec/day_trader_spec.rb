require_relative '../lib/day_trader'

describe "Function day_trader" do
  it "gives you the day to buy and the day to sell" do
    expect(day_trader([17, 3, 6, 9])).to eq([1, 3])
  end
  it "gives you the day to buy and the day to sell" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  end
  it "gives you the day to buy and the day to sell but only the first occurence" do
    expect(day_trader([12, 14, 20, 1, 2, 10, 6, 1, 15])).to eq([3, 8])
  end
  it "gives you the day to buy and the day to sell but only the first occurence" do
    expect(day_trader([17, 3, 6, 1, 15, 3, 6, 1, 15])).to eq([3, 4])
  end

end