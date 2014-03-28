class Product < ActiveRecord::Base

	monetize :price_cents
	has_many :pictures,:as => :imageable
end
