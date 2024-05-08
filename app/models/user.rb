class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username,  presence: true, uniqueness: true, length: { mimimun: 4, maximum: 12 }
  validates :email,     presence: true, uniqueness: true
  validates :password,  presence: true, length: { mimimun: 6, maximum: 16 }

  has_many :created_events, foreign_key: :creator_id, class_name: "Event"
end
