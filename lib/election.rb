class Election
 attr_reader :year, :races, :candidates, :vote_counts

  def initialize(year)
    @year = year
    @races = []
    @candidates = []
    @vote_counts = {}
  end

  def add_race(race)
    @races << race
  end

  def candidates
    @races.each do |race|
      @candidates << race.candidates
    end
  end

  def vote_counts
    @candidates.each do |candidate|
      @vote_counts = 
    end

  end

end