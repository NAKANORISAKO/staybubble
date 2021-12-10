class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bubbles, dependent: :destroy
  has_many :folders
  validates :name, presence: true
  validates :profile, length: { maximum: 200 }
  validates :oshiprofile, length: { maximum: 200 }
  mount_uploader :image, ImageUploader
  mount_uploader :oshiga, ImageUploader
end
