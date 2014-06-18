class PagesController < ApplicationController
  before_filter :images

  def images
    @products = Product.all
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
