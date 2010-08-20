class Script < ActiveRecord::Base
	has_many :talks 
	accepts_nested_attributes_for :talks
end
