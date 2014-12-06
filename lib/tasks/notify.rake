namespace :notify

  desc 'Send participants an email when game is on'
  task participants: :environment do
    # Check to see if game is in session
    # gather all available participants
    # TODO: wtf does .group() not work!?
    @groups = Participant.all.group_by(&:group_id)
    @groups.each_pair do |group_id, group|
      group.each do |participant|
        Game.assign_santa(participant)
      end
    end
    # send them all an email
    # This should really only run once a year ever
  end
end
