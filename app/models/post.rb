class Post < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	scope :reverse_all, -> {order('created_at DESC')}
end
