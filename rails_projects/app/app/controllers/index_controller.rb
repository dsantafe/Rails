class IndexController < ApplicationController
  def index
    if user_signed_in?
      render 'home/index', layout: 'home'
    end
  end
end
