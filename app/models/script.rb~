class Script < ActiveRecord::Base
	has_many :talks 
	accepts_nested_attributes_for :talks

	def nameAbbr()
		$i = 0
		nameAbbr3 = ""
		#1b. Pozvání do poradny - z dotazniku
		#1b.PozDoPor-ZDot
		while (name.gsub(/^(.*?\s){#{$i}}(.*?)$/,'\1') != name) 
			nameAbbr3 = nameAbbr3 +  name.gsub(/^(.*?\s){#{$i}}(.*?)$/,'\1')[0..2].capitalize.gsub(/^(.*?)[^\x00-\x7F]$/,'\1')
			$i =  $i + 1
		end
		$i =  $i - 1
		nameAbbr3 = nameAbbr3 + name.gsub(/^(.*?\s){#{$i}}(.*?)$/,'\2')[0..2].capitalize.gsub(/[^\x00-\x7F]$/,'\1')
		nameAbbr= nameAbbr3.gsub(/\s/,"")
		
	end
  
	def nameAbbr1()
		nameAbbr  = name.gsub(/^(.*?)\s.*?$/,'\1')
		nameAbbr2 = name.gsub(/^.*?\s(.*?)\s.*?$/,'\1').capitalize
		nameAbbr3 = name.gsub(/^.*?\s.*?\s(.*?)$/,'\1').capitalize
		nameAbbr = nameAbbr1 + ' ' + nameAbbr2[0..4].gsub(/^(.*?)[^\x00-\x7F]$/,'\1')  + ' ' +nameAbbr3[0..6].gsub(/^(.*?)[^\x00-\x7F]$/,'\1') 
		nameAbbr = nameAbbr.gsub(/\s/,"")
		
	end
end
