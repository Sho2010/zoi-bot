def is_bot_message?(event)
  event.respond_to?(:subtype) && event.subtype == 'bot_message'
end

def fetch_pr()
  repo = ENV['INTERN_REPO']
  pulls = Github::Github.new.pull_requests repo

  unless pulls
    return "#{repo}: リポジトリは見えないぞい"
  end

  messages = []
  messages << "< #{repo}のPull Requestを出すぞい\n"
  pulls.each do |pr|
    messages << ":octocat: <#{pr[:url]}|#{pr[:title]}> (#{pr[:user]})\n"
  end
  messages
end

schedule '5 10 * * *' do
  channel = "#team-0818"
  messages = fetch_pr
  say messages.join, channel: channel
end

hear '^(PR|pr)[だ|出]して$' do |event|
  # webhookはスルー
  unless is_bot_message?(event)
    # restrictedな人には反応しないようにする
    next if event.user.is_ultra_restricted
    next if event.user.is_restricted
  end

  messages = fetch_pr
  puts messages
  say messages.join, channel: event.channel
end

