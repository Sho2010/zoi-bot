hear '(.+)(から選んで|どれ|どっち)' do |event|
  items = event.matches[1].split(/[　・、,と\s]+/)
  if rand(100) > 20
    picked_item = items.sample
    if event.text.include?('好き')
      say "わぁい#{picked_item} あかり#{picked_item}大好き", channel: event.channel
    else
      say "#{picked_item}がいいと思うなぁ", channel: event.channel
    end
  else
    allPickMes = items.length == 2 ? "両方いいと思うなぁ" : "全部いいと思います！"
    say %W("わたしには選べないよぉ" #{allPickMes}).sample, channel: event.channel
  end
end
