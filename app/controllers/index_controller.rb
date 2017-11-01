class IndexController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @albums = Album.is_public.all
  end

end