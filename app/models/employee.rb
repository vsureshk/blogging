class Employee < ActiveRecord::Base
	has_many :pictures,:as => :imageables
	has_many :subordinates,:class_name => "Employee",:foreign_key => "manager_id"
	belongs_to :manager,:class_name => "Employee"
end
