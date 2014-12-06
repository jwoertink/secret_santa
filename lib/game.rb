class Game
  START_DATE = "#{Time.now.year}-12-10".freeze
  END_DATE = "#{Time.now.year}-12-31".freeze

  def self.pregame?
    Time.parse(START_DATE).to_i > Time.now.to_i
  end

  def self.game_time?
    !pregame?
  end

  def self.assign_santa(participant)
    group_id = participant.group_id
    playing = Participant.by_group(group_id).available
    available = playing.reject { |p| p.id == participant.id }
    recipient = available.sample
    if recipient
      recipient.update_attributes(taken: true, secret_santa_id: participant.id)
      ParticipantMailer.notify(participant, recipient).deliver
    end
    recipient
  end

end
