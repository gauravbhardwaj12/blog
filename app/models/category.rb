class Category < ActiveRecord::Base
	
	has_and_belongs_to_many :article
	default_scope lambda {order('name')}
	scope :published, lambda {where("created_at > ?", Time.now)}
end
