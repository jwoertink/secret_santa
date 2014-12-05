namespace :notify

  desc 'Send participants an email when game is on'
  task participants: :environment do
    # Check to see if game is in session
    # gather all available participants
    # send them all an email
    # This should really only run once a year ever
  end
end
