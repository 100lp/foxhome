class PagesController < ApplicationController
  before_filter :help

  def help
    @current_page = request.env['PATH_INFO']
    @body_bg = ["default", "first", "second"]
  end

  def index
  end

  def about
  end

  def interiors
  end
  
  def grafika
  end

  def contacts
  end

  def show
    
  end

end
