class FriscoEats::Scraper

	def self.scrape_names

		site = "https://www.cntraveler.com/gallery/best-restaurants-in-san-francisco"
		doc = Nokogiri::HTML (open(site))
		
		restaurant_card = doc.css("div.gallery-slide-caption")
		
		restaurant_card.each do |restaurant|
			
			attributes = {
              name: restaurant_card.css("span.gallery-slide-caption__hed-text")[0].text,
              price: restaurant_card.css("div.gallery-slide-caption__detail")[0].text,
              url: restaurant_card.css("div.gallery-slide-caption a")[0].attributes['href'].value,
              overview: restaurant_card.css("div.gallery-slide-caption__dek-container p")[0].text 
            }
            restaurant = FriscoEats::Restaurant.new(attributes)

            
            end
        end
    


	def scrape_reviews

	end


end
