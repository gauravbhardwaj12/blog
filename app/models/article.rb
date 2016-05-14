class Article < ActiveRecord::Base
	validates :title ,:body, presence: true
	belongs_to :user
	has_and_belongs_to_many :categories
	has_many :comments


 def long_title
   "#{title} - #{published_at}" 
 end

 def owned_by?(owner)
    return false unless owner.is_a?(User)
	user == owner
 end
end

