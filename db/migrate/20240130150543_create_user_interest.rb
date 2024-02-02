class CreateUserInterest < ActiveRecord::Migration[7.1]
  def change
    create_table :user_interest do |t|
      t.references :user, null: false, foreign_key: true
      t.references :interest, null: false, foreign_key: true
      t.timestamps
    end
  end
end
