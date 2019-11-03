class MYFIRSTPROJECT::CLI

    #anything the user is going to do goes here!
    def call
        puts "Hi there! Welcome to Furrever Home Finder! "

      get_input
      print_animal_shelters
      select_animal_shelters
      print_shelter_info
     


    end


   def get_input
    puts "Are you looking for a cat or a dog?"
    input = gets.chomp

      if input == "dog" 
        url_dog = 'https://api.yelp.com/v3/businesses/search?location=Ventura&term=animal_shelters&radius=40000&sort_by=best_match&limit=20'
         MYFIRSTPROJECT::API.fetch(url_dog)
      elsif input == "cat"
          url_cat = 'https://api.yelp.com/v3/businesses/search?location=Ventura&term=cat_shelters&radius=40000&sort_by=best_match&limit=20'
            MYFIRSTPROJECT::API.fetch(url_cat)
       else
        puts "Paw-done me, but we're having a ruff time understanding your choice. Try again?" 
        get_input
        end

      end

      def print_animal_shelters
        MYFIRSTPROJECT::Adoption.all.each.with_index(1) do |shelter,index|
        puts "#{index}. #{shelter.name}"
        
        end

      end

      def select_animal_shelters
        input = gets.chomp.to_i
       if  input.between?(1,20) 
       @shelter =  MYFIRSTPROJECT::Adoption.find(input)
       else
        puts "Paw-done me, but we're having a ruff time understanding your choice. Try again?"
        select_animal_shelters
      
       end


    end
    def print_shelter_info
      puts  @shelter.name
      puts @shelter.address
      puts @shelter.phone_number
     
    end



end