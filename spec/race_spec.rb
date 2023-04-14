require "./lib/candidate"
require "./lib/race"

RSpec.describe Race do
  before(:each) do
    @race = Race.new("Texas Governor")
  end
  
  it "has attributes" do
    expect(@race).to be_a(Race)
    expect(@race.office).to eq("Texas Governor")
  end

  it "makes candidates" do
    expect(@race.candidates).to eq([])
d
    expect(@race.candidates.count).to eq(2)
  end
end