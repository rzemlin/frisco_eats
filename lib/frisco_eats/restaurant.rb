class FriscoEats::Restaurant
	attr_accessor :name, :number, :url, :address, :overview
	@@all = []

	def initialize(att_hash)
		att_hash.each do |key, value|
			self.send("#{key}=", value)
	    end
	    save
	end

	def save
		@@all << self
	end
	
end
