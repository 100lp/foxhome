class PagesController < ApplicationController
  before_filter :help

  def help
    @current_page = request.env['PATH_INFO']
    @products = Product.all
    @body_bg = ["default", "first", "second"]
  end

  def index
  end

  def about
  end

  def pressa
  end
  
  def classes
  end

  def doings
  end

  def contact
  end


  def new
  end

  def ugolki
  end

  def sozvezdie
  end
  
  def lady
  end

  def homo
  end

end
