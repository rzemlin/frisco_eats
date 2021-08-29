class FriscoEats::CLI
	
	def start 
		greeting
		scrape_names
		list_names
		menu
	end
	
	def greeting
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
	end

	def scrape_names
	    FriscoEats::Scraper.scrape_names  
	end

	def list_names
        FriscoEats::Restaurant.all.each.with_index(1) do |restaurant, index|
        puts "#{index}. #{restaurant.name}"
    end
    
    def menu
	    puts "Select the number corresponding to the restaurant for more info:"
	    input = gets.strip.to_i
	    if input == FriscoEats::Restaurant.id

	    	puts "#{movie.review}"
	    	puts "#{price}"
	    	puts "#{url}"
	    else
	    puts "Please try another selection"
	    menu
	    end

	    binding.pry

	end




	    #def details
	    #	puts"Select the number for the restaurant for more info"
	    #end

        
	    


	#FriscoEats::Scraper.scrape_names
    #list restaurants
    #ask for input
    #show desc
    #ask for another selection or exit

   


	#def list_names
		#FriscoEats::Restaurant.all.each_with_index(1) do |name, index|
		#	puts "#{index}.  #{restaurant.name}"

	#end

end



end

