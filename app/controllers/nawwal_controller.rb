class NawwalController < ApplicationController

  def home
    @typed_url = params[:does_not_exist]
  end
end
