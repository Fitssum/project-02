class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  cattr_accessor :current_user

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :userbikes

  has_many :bikes, through: :userbikes
  # I might consider has_one instead of has_many so that a user can only have one at a time
  # This would probably make it necessary to have to add some messaging to the user to indicate this limitation
end
