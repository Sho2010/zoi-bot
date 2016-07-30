def zoi(event)
  zoi_urls = [
    "https://41.media.tumblr.com/9cdd4f41d96600d13eddac32da17ba79/tumblr_ngga9kcFVX1qd1ozgo1_500.jpg",
    "https://40.media.tumblr.com/4656b8918f43f53fcccd9811030525f7/tumblr_nefii3BoOm1qd1ozgo1_500.jpg",
    "http://d320ilho7xw3um.cloudfront.net/10052-685558e9-cf79-4417-9fcb-fd219e8f15e1.jpg",
    "https://67.media.tumblr.com/044137b9dd7823fc26d2a0513fb6a5ef/tumblr_ob2n9hMEfJ1uubj4co1_250.jpg",
    "https://66.media.tumblr.com/6daf7c901b990bcb82ca2ec78a871b96/tumblr_ob2naaSpSo1uubj4co1_540.jpg"
  ]
  if event
    say zoi_urls.sample, channel: event.channel 
  else
    say zoi_urls.sample
  end
end

hear 'ぞい' do |event|
  zoi(event)
end

schedule '5 10 * * 2-6' do
  zoi
end

schedule '50 18 * * 2-6' do
  say 'そろそろ帰るぞい'
  say 'https://66.media.tumblr.com/a217049d609dbee4d742a10dd1000395/tumblr_ob2kbrOaT21uubj4co1_1280.jpg', channel: '#team-0801'
end

