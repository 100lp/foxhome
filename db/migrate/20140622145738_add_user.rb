class AddUser < ActiveRecord::Migration
  def change
  	User.create(:email => "admin@gmail.com", :password => "neparol22")
  end
end
