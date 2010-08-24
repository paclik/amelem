class Script < ActiveRecord::Base
	has_many :talks 
	accepts_nested_attributes_for :talks

	def nameAbbr()
		$i = 0
		nameAbbr3 = ""
		#1b. Pozvání do poradny - z dotazniku
		#1b.PozDoPorZDot
		while (name.gsub(/^(.*?\s){#{$i}}(.*?)$/,'\1') != name) 
			nameAbbr3 = nameAbbr3 +  name.gsub(/^(.*?\s){#{$i}}(.*?)$/,'\1').capitalize.mb_chars.normalize(:kd).gsub(/[^x00-\x7F]/n, '').to_s[0..2]
			$i =  $i + 1
		end
		$i =  $i - 1
		nameAbbr3 = nameAbbr3 + name.gsub(/^(.*?\s){#{$i}}(.*?)$/,'\2').capitalize.mb_chars.normalize(:kd).gsub(/[^x00-\x7F]/n, '').to_s[0..2]
		nameAbbr= nameAbbr3.gsub(/\s/,"")
	
	end

end
