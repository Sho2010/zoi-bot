def is_bot_message?(event)
  event.respond_to?(:subtype) && event.subtype == 'bot_message'
end

schedule '5 10 * * *' do
# respond '^PRだして$' do |event|
  # webhookはスルー
  # unless is_bot_message?(event)
  #   # restrictedな人には反応しないようにする
  #   next if event.user.is_ultra_restricted
  #   next if event.user.is_restricted
  # end

  # repo = event.matches[:repo]
  repo = ENV['INTERN_REPO']
  channel = "#team-0801" 
  puts repo
  pulls = Github::Github.new.pull_requests repo

  unless pulls
    say "そのリポジトリは見えないぞい", channel: channel
    next
  end

  messages = []
  messages << "< #{repo}のPull Requestを出すぞい\n"
  pulls.each do |pr|
    messages << ":octocat: <#{pr[:url]}|#{pr[:title]}> (#{pr[:user]})\n"
  end

  say messages.join, channel: channel 
end
