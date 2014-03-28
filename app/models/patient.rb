class Patient < ActiveRecord::Base
	has_many :appoinments
	has_many :physicians,:through =>:appoinments
end
