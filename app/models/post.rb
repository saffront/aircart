class Post < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_attached_file :image, :styles => { :original => "300x300", :medium => "200x200>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	scope :reverse_all, -> {order('created_at DESC')}
end
