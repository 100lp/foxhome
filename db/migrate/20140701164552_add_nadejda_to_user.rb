class AddNadejdaToUser < ActiveRecord::Migration
  def change
  	User.create(:email => "nadejda@art-povar.ru", :password => "kukui2014")
  end
end
