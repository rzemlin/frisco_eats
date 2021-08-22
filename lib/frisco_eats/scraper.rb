class FriscoEats::Scraper

	def self.scrape_names
		
		site = "https://sf.eater.com/maps/best-restaurants-san-francisco-38"
		
		doc = Nokogiri::HTML (open(site))
		
		restaurant_card = doc.css("section.c-mapstack__card")
		
		restaurant_name = restaurant_card.css("div.c-mapstack__card-hed h1")
		#restaurant_name.each.with_index(1) do |name, index|
		#	puts "#{{index}.  #{name.name}
		
		
        restaurant_card.each do |card| 
	      attributes = {
		     name: card.css("div.c-mapstack__card-hed")[0].text,
		     number: card.css("div.c-mapstack__info div.c-mapstack__phone-url a")[0].text,
		     address: card.css("div.c-entry-content div.c-mapstack__address")[0].text,
		     #url: card.css("div.c-mapstack__info a")[1]['href'],
		     #overview: card.css("div.c-entry-content p")[25],
	             }
	        FriscoEats::Restaurant.new(attributes)
	        binding.pry
        end
    end


	def scrape_reviews

	end


end
