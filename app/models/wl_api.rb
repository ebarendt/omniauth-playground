class WlApi

  BASE_URL = 'https://apis.live.net/v5.0'

  attr_reader :token

  def initialize(token)
    @token = token
  end

  def albums
    HTTParty.get("#{BASE_URL}/me/albums?access_token=#{token}")['data']
  end

  def folder(folder_id)
    HTTParty.get("#{BASE_URL}/#{folder_id}/files?access_token=#{token}")
  end

  def thumbnail_url(file_id)
    HTTParty.get("#{BASE_URL}/#{file_id}?access_token=#{token}")['images'][1]['source']
  end

end