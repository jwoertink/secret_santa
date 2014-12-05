module Clockwork

  every 1.day, at: '12:00' do
    rake 'notify:participants'
  end

end
