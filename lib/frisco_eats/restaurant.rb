class FriscoEats::Restaurant
	attr_accessor :name, :price, :url, :overview, :id
	@@all = []

	def initialize(attr_hash)
		attr_hash.each do |key, value|
			self.send("#{key}=", value)
	    end
	    self.save	    
	end

	def save
		@@all << self
		self		
	end

	def self.all
		@@all
	end

end
