class FriscoEats::CLI
	
	attr_accessor :sorted_restaurants
	
	def start 
		greeting
		scrape_names
		sort_restaurants
		list_names
		get_info
	end

	def greeting
		puts "\nWelcome to Frisco Eats!".colorize(:yellow)
		puts "\nHere you can find a  unique selection of eateries ranging".colorize(:yellow)
		puts "from a wide array of cuisines and varying price points. ".colorize(:yellow)
		puts "Whether you on one a first date and wish to impress, ".colorize(:yellow)
		puts "or you are looking for a quick bite without sacrificing".colorize(:yellow)
		puts "quality, Frisco Eats surely will have what you're looking".colorize(:yellow)
		puts "for. The one thing all these restaurants have in common:".colorize(:yellow)
		puts "They are all delicious!".colorize(:yellow)
	end

	def scrape_names
		FriscoEats::Scraper.scrape_restaurants
	end

	def sort_restaurants
		@sorted_restaurants = FriscoEats::Restaurant.all.sort_by {|restaurant| restaurant.name}
	end

	def list_names
        puts "\nHere is a list of the best:".colorize(:red)
        @sorted_restaurants.each.with_index(1) do |restaurant, index|
        puts "#{index}. #{restaurant.name}".colorize(:green)
      end
	end

    def get_info
    	puts "\nPick the number that corresponds to the restaurant for more info:"
    	input = gets.strip
    	index = input.to_i - 1
    	if index.between?(0,26)
    		restaurant = @sorted_restaurants[index]
    		puts "\n#{restaurant.name}   ---   #{restaurant.price}".colorize(:red)
    		puts "\nOverview: #{restaurant.overview}".colorize(:green)
    		puts "\nURL: #{restaurant.url}\n".colorize(:blue)
    		puts ""
    		choose_another
    	elsif input == "exit"
    		puts "Goodbye!".colorize(:red)
    	else
    		puts "I'm sorry, I didn't understand that selection".colorize(:red)
    		get_info #recursion
    	end
    end

    def choose_another
    	puts "would you like information about another restaurant? (Y/N)"
    	input = gets.strip.upcase
    	until  ["Y","N","YES","NO"].include?(input)
      	  puts "Please type Y or N"
        input = gets.strip.upcase
    	end
		if input == "Y" || input == "YES"
      	  list_names
      	  get_info
  		else
  		  puts "Thanks for using Frisco Eats ... Goodbye!".colorize(:red)
  		end
  	end
end

