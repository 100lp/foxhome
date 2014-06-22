class AddAdminUser < ActiveRecord::Migration
  def change
  	User.create!(:email => "admin@example.com", :password => "password")
  end
end
