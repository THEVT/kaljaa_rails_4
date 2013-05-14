class Blog < ActiveRecord::Base
	attr_accessible :content, :profile_id, :title
	belongs_to :profile

	validates :title, presence: true	
	validates :content, presence: true
	validates :profile_id, presence: true

	default_scope order: 'blogs.created_at DESC'


end
