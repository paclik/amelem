class Contact < ActiveRecord::Base
  belongs_to :body_type
  has_one :talk
  validates_presence_of :last_name, :first_name
  validates_numericality_of :height, :weight, :age
	def validate 
		errors.add("chyba -","Vyplnit bud mobil nebo pevna") if mob_phone.blank? && land_line.blank? 
		errors.add("chyba -","Vyplnit bud mobil nebo pevna") if mob_phone.blank? && land_line.blank? 
	end 
end
