require_relative '../lib/word_counter'

describe "Function word_count" do
  dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

  it "must find any times a word of the corpus is found into the dictionnary" do
    expect(word_counter("below", dictionnary)).to eq({"below"=>1, "low"=>1})
  end

  it "must find any times a word of the corpus is found into the dictionnary" do
    expect(word_counter("below low", dictionnary)).to eq({"below"=>1, "low"=>2})
  end

  it "must find any times a word of the corpus is found into the dictionnary" do
    expect(word_counter("Howdy partner, Sit down! How's it going?", dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end

end