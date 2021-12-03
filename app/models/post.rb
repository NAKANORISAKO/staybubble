class Post < ApplicationRecord
	belongs_to :bubbles,optional: true
	belongs_to :folders,optional:true

end
