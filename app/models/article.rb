class Article < ActiveRecord::Base
	validates :title, :category, :presence => { :message => "необходимо ввести название и выбрать категорию" }
	belongs_to :category
end
