class AddUser < ActiveRecord::Migration
  def change
  	User.create(:email => "spb.gurme@gmail.com", :password => "neparol22")
  end
end
