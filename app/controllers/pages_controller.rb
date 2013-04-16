class PagesController < ApplicationController

  def index
    @albums = WlApi.new(current_user.token).albums
  end

end
