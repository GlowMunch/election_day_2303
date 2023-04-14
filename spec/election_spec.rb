require "./lib/candidate"
require "./lib/race"
require "./lib/election"

RSpec.describe Election do
  before(:each) do
    @election = Election.new("2010")
    @texas = Race.new("Texas Governor")
    @wisconson = Race.new("Wisconson Governor")
    @candidate1 = @texas.register_candidate!({name: "Diana D", party: :democrat})
    @candidate2 = @wisconson.register_candidate!({name: "Roberto R", party: :republican})
  end
  
  it "has attributes" do
    expect(@election).to be_a(Election)
    expect(@election.year).to eq("2010")
    expect(@election.races).to eq([])
    expect(@election.candidates).to eq([])
    expect(@election.vote_counts).to eq({})
  end

  it "has races" do
    expect(@election.races).to eq([])
    @election.add_race(@texas)
    @election.add_race(@wisconson)
    expect(@election.races.count).to eq(2)
  end


  it "races have votes" do
    expect(@election.races).to eq([])
    @election.add_race(@texas)
    @election.add_race(@wisconson)
    expect(@election.races.count).to eq(2)
    require 'pry'; binding.pry
  end
end

# ## Iteration 3

# Use TDD to create an `Election` class that satisfies the following 
# requirements.

# You have been contacted by the local government to 
# create a program that helps track their elections by 
# organizing registered candidates and their votes.

# | Method Name | Return Value |
# | ----------- | ------------ |
# | #new        | An `Election` object that has an attribute of year (string data type). |
# | #year       | The year of the election (string). |
# | #races      | An array of `Race` objects. |
# | #add_race(race)   | An array of `Race` objects. |
# | #candidates | An array of all `Candidate` objects in the election. |
# | #vote_counts | A hash with each candidate's name as a key and their count of votes as the value. |

