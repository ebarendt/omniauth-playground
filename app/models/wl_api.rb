class WlApi

  BASE_URL = 'https://apis.live.net/v5.0'

  attr_reader :token

  def initialize(token)
    @token = token
  end

  def albums
    get('/me/albums')['data']
  end

  def folder(folder_id)
    get("/#{folder_id}/files")['data']
  end

  def thumbnail_url(file_id)
    get("/#{file_id}")['images'][1]['source']
  end

  private

    def get(path)
      HTTParty.get("#{BASE_URL}#{path}?access_token=#{token}")
    end

end