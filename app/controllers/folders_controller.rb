class FoldersController < ApplicationController

  def show
    @folder = WlApi.new(current_user.token).folder(params[:id])
  end

end
