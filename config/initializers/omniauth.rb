Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :windowslive, ENV['WINDOWSLIVE_CLIENT_ID'], ENV['WINDOWSLIVE_SECRET'], :scope => 'wl.basic,wl.emails'
end