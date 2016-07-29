require 'sudden_death'

hear '^突然の.*' do |event|
  say event.text.sudden_death,channel: event.channel
end

