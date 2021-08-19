class FriscoEats::CLI
	
	def start
		puts "\nWelcome to Frisco Eats!".colorize(:yellow)
		#puts ""
		#puts "Here you can find a selection of eateries ranging from"
		#puts "a wide array of cuisines and varying price points. "
		#puts "Whether you on one a first date and wish to impress, "
		#puts "or you are looking for a quick bite without sacrificing"
		#puts "quality, Frisco Eats surely will have what you're looking"
		#puts "for. The one thing all these restaurants have in common:"
		#puts "They are all delicious!"
		#puts ""
		#puts ""

		#puts "Press Enter to get a highly reccommended selection of restaurants!" 
	FriscoEats::Scraper.scrape_names
    #list restaurants
    #ask for input
    #show desc
    #ask for another selection or exit

    end


	def list_names
		FriscoEats::Restaurant.all.each_with_index(1) do |name, index|
			puts "#{index}.  #{restaurant.name}"

	end


end

