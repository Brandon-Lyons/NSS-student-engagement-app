class CreateSocialAuthenticationTable < ActiveRecord::Migration
  def change
  	create_table(:social_authentications) do |t|
  		t.integer :user_id
  		t.string :provider
  		t.string :uid
  	end

  	add_index :social_authentications, :user_id, :unique => true
  	add_index :social_authentications, :provider
  	add_index :social_authentications, :uid
  end
end
