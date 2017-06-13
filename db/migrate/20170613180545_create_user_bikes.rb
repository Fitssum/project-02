class CreateUserBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_bikes do |t|

      t.timestamps
    end
  end
end
