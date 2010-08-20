class Talk < ActiveRecord::Base
	belongs_to :contact , :foreign_key => 'contact_id'
	belongs_to :script , :foreign_key => 'script_id'
	validates_presence_of :contact_id
	accepts_nested_attributes_for :contact ,:script
	
  cattr_reader :per_page
  @@per_page = 30

	
	def contact_name
		contact.last_name if contact
	end
	
		
	def contact_name=(contact_name)
		self.contact = Contact.find_by_last_name(contact_name) unless contact_name.blank?
	end
	
	def delka_hovoru
		if (start_time  == nil) or (end_time  == nil)  then  return "" end
		diff_seconds = (end_time - start_time).round 
		diftime_sec = diff_seconds % 60
			diftime_min = (diff_seconds/60)
			if (diff_seconds >0)then
				@retez = diftime_min.to_s + " min " + diftime_sec.to_s + " 	s"
			else
				@retez = ""
			end
			@retez.to_s 	
	end


end
