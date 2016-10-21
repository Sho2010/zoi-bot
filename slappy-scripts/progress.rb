def progress_image_url()
  [
    "http://66.media.tumblr.com/888ad0c8852a01cbed34413e3cb322a6/tumblr_n9o93yL71p1sckns5o1_1280.jpg ",
    "http://66.media.tumblr.com/04efa11ed62934badc3a7937987e2bd3/tumblr_n5embx4Gqg1sckns5o1_540.jpg ",
  ].sample
end

hear /進捗どう/ do |event|
  say progress_image_url, channel: event.channel
end

schedule '00 15 * * 1-5' do
  say progress_image_url, channel: event.channel
end
