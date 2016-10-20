foods = %w(:fish: :meat_on_bone: :sushi: :sweet_potato:)

hear /slot|スロット/ do |event|
  result = []
  3.times{ result << foods.sample }
  say result.join(' '), channel: event.channel
  say("わぁい 揃ったよ♪", channel: event.channel) if result.uniq.one?
end
