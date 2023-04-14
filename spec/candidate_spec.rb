require "./lib/candidate"

RSpec.describe Candidate do
  before(:each) do
    @diana = Candidate.new({name: "Diana D", party: :democrat})
  end
  
  it "has attributes" do
    expect(@diana).to be_a(Candidate)
    expect(@diana.name).to eq("Diana D")
    expect(@diana.party).to eq(:democrat)
  end

  it "has votes" do
    expect(@diana.votes).to eq(0)
  end

  it "adds votes" do
    @diana.vote_for!
    @diana.vote_for!
    @diana.vote_for!
    expect(@diana.votes).to eq(3)
    @diana.vote_for!
    expect(@diana.votes).to eq(4)
  end

end