class FriscoEats::Scraper

	def self.scrape_restaurants
        counter = 0
		site = "https://www.cntraveler.com/gallery/best-restaurants-in-san-francisco"
		doc = Nokogiri::HTML (open(site))
		
		restaurant_card = doc.css("div.gallery-slide-caption")
		
		restaurant_card.each.with_index(1) do |restaurant, index|
			
			attributes = {
              name: restaurant_card.css("span.gallery-slide-caption__hed-text")["#{counter}".to_i].text,
              price: restaurant_card.css("div.gallery-slide-caption__detail")["#{counter}".to_i].text,
              url: "https://www.cntraveler.com" + restaurant_card.css("div.gallery-slide-caption a.external-link")["#{counter}".to_i].attributes['href'].value,
              overview: restaurant_card.css("div.gallery-slide-caption__dek-container p")["#{counter}".to_i].text, 
              id: index
            }
            counter += 1
            restaurant = FriscoEats::Restaurant.new(attributes)
           
            end
        end

end
