class ParticipantMailer < ActionMailer::Base
  default from: "no-reply@#{ENV['HEROKU_DOMAIN']}"

  def notify(participant, recipient)
    @recipient = recipient
    mail(to: participant.email, subject: 'Secret Santa Game!')
  end
end
