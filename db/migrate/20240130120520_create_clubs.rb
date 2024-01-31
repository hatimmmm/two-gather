class CreateClubs < ActiveRecord::Migration[7.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.string :image_url
      t.boolean :public

      t.timestamps
    end
  end
end
