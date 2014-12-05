class Game
  START_DATE = "#{Time.now.year}-12-10".freeze
  END_DATE = "#{Time.now.year}-12-31".freeze

  def self.pregame?
    Time.parse(START_DATE).to_i > Time.now.to_i
  end

  def self.game_time?
    !pregame?
  end

end
