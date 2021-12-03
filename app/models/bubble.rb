class Bubble < ApplicationRecord
	mount_uploader :image, ImageUploader
	
belongs_to :user
# has_many :folders, through: :posts
has_many :posts, dependent: :destroy
has_many :folders, through: :posts
end
