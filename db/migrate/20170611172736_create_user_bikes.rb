class CreateUserBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_bikes do |t|
      t.datetime :date_rented
      t.boolean :isReturned

      t.timestamps
    end
  end
end
