class SessionsController < ApplicationController
  def create
    client = HTTPClient.new

    parameters = {
      client_id: ENV['COLORMESHOP_CLIENT_ID'],
      client_secret: ENV['COLORMESHOP_CLIENT_SECRET'],
      code: params[:code],
      grant_type: 'authorization_code',
      redirect_uri: 'http://localhost:3000/auth/colorme/callback'
    }

    res = client.post('https://api.shop-pro.jp/oauth/token', parameters)

    @account = Account.create(name: Time.now, access_token: JSON.parse(res.body)['access_token'])
    render :create
  end
end
