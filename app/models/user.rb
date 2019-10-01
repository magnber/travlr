class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :trips, through: :participants
  has_many :participants
  has_many :comments
  has_many :likes
  has_many :trip_items
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end