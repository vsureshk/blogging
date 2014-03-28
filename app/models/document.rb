class Document < ActiveRecord::Base
	has_many :paragraphs,:through => :sections
	has_many :sections
end
