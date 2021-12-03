class Folder < ApplicationRecord
	belongs_to :user
	# belongs_to :bubble
	has_many :posts, dependent: :destroy
	has_many :bubbles,through: :posts
end
