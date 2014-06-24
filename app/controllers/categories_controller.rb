class CategoriesController < ApplicationController
	before_filter :help

  def help
    @current_page = request.env['PATH_INFO']
    @body_bg = ["default", "first", "second"]
    @vk_nav = [ ]
  end
	def show
		render(params[:category_name])
	end
end
