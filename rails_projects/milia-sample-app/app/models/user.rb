class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :confirmable,
         :recoverable, :rememberable, :validatable, :lockable, :timeoutable, :trackable
end
