class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :profile_picture, :string, :default => 'https://i.imgflip.com/1i34wa.jpg'
  end
end
