class PagesController < ApplicationController
  def index
    ap params
    render 'index'
  end
end
