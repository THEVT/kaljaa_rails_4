class Micropost < ActiveRecord::Base
	attr_accessible :content
	belongs_to :account

	validates :content, presence: true, length: { maximum: 140 }	
	validates :account_id, presence: true

	default_scope order: 'microposts.created_at DESC'

end
