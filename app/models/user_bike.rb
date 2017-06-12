class UserBike < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  def change
    add_reference :bikes, :users, foreign_key: true
  end
end
