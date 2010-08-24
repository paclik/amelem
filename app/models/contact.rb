class Contact < ActiveRecord::Base
  belongs_to :body_type
  has_many :talks 
  accepts_nested_attributes_for :talks
  validates_presence_of :last_name, :state
  #validates_numericality_of :height, :weight, :age
  
  cattr_reader :per_page
  @@per_page = 30
  
	def validate 
		#errors.add("chyba -","Vyplnit bud mobil nebo pevna") if mob_phone.blank? && land_line.blank? 
		#errors.add("chyba -","Vyplnit bud mobil nebo pevna") if mob_phone.blank? && land_line.blank? 
	end 
	def full_name
		#contact.last_name if contact
		
	end	
	
	def bmi
		unless (weight == nil) or (height == nil) then
			
			indexBmi = (weight.to_f / ((height.to_f/100) * (height.to_f/100)) *100).round / 100.0
		else
			indexBmi = "no data"
		end
		
		return indexBmi
	end	
  
	def bfat
		unless (weight == nil) or (height == nil) or (age == nil) or (gender == nil) then
			if gender then @gender = 1 else @gender = 0 end
			indexBfat = ((1.2*bmi.to_f + 0.23*age.to_f - 10.8 *@gender.to_f - 5.4)*100).round / 100.0
		else
			indexBfat = "no data"
		end
		return indexBfat
	end	
 	
end
