class Game

  def self.is_pregame?
    Time.parse("#{Time.now.year}-12-10").to_i > Time.now.to_i
  end

end
