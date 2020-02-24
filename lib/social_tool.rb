module SocialTool

	def self.twitter_search
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = env.fetch("TWITTER_CONSUMER_KEY")
		  config.consumer_secret     = env.fetch("TWITTER_CONSUMER_SECRET")
		  config.access_token        = env.fetch("TWITTER_ACCESS_TOKEN")
		  config.access_token_secret = env.fetch("TWITTER_ACCESS_SECRET")
		end
		client.search("#rails", result_type: 'recent').take(6).collect do |tweet|
			"#{tweet.user.screen_name}: #{tweet.text}"
		end
	end

end