Rails.application.config.middleware.use OmniAuth::Builder do
  provider :colormeshop, ENV['COLORMESHOP_CLIENT_ID'], ENV['COLORMESHOP_CLIENT_SECRET']
end
