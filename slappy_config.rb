Slappy.configure do |config|
  ## Slappy Settings
  #
  # token:
  #   Slack API Token
  #
  # config.token = ENV['SLACK_TOKEN']

  # scripts_path_dir:
  #   Slappy scripts directory.
  #   Slappy load scripts in this directory.
  #
  # config.scripts_dir_path = 'slappy-scripts'

  # logger:
  #   Use logger object.
  #
  # config.logger = Logger.new(STDOUT)

  # logger.level:
  #   Specify logger level.
  #
  # config.logger.level = Logger::INFO

  # dsl:
  #   use dsl
  #
  #   param: :enabled or :disabled
  #
  # config.dsl = :enabled

  # stop_with_error:
  #   Select bot be stop when catch StandardError.
  #   If false, puts stack trace but be not stop when bot catch StandardError.
  #
  # config.stop_with_exception = true

  ## Default parameters
  #
  # There parameters use in say method when send to Slack.
  # Settings specified here will take precedence over those in method option
  # And other parameters give to method option if you want.
  #
  #   Official API document:
  #     https://api.slack.com/methods/chat.postMessage

  # username:
  #   Name of bot.
  #
  config.robot.username = 'zoi'

  # channel:
  #   Channel, private group, or IM channel to send message to.
  #   Can be an encoded ID, or a name. See below for more details.
  #
  config.robot.channel = '#team-0818'

  # icon_emoji:
  #   emoji to use as the icon for this message. Overrides icon_url.
  #
  # config.robot.icon_emoji = nil

  # icon_url:
  #    URL to an image to use as the icon for this message
  #
  config.robot.icon_url = 'https://67.media.tumblr.com/b3cb91ad44c7f4daff3b6ccf3a310a18/tumblr_ob2lp6oomP1uubj4co1_400.png' 

end

