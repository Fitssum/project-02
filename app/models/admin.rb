class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Rather than having a separate model for admins, you could add a migration for users that adds an is_admin column that has a boolean (true/false) value

  # The advantage to this is that you arent duplicating functionality, but I realize you were just following Devise docs for adding Admin roles (Option 1)

  # see the links below

 # https://github.com/plataformatec/devise/wiki/How-To:-Add-an-Admin-Role#option-2-adding-an-admin-attribute

  # https://stackoverflow.com/questions/24875403/only-allow-admin-user-to-create-new-users-in-rails-with-devise-no-external-modu
end
