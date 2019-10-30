class MYFIRSTPROJECT::CLI

    #anything the user is going to do goes here!
    def call
        puts "Hi there! Welcome to Furrever Home Finder!"

        MYFIRSTPROJECT::SCRAPER.new.fetch 
        MYFIRSTPROJECT::SCRAPER.new.grab
        MYFIRSTPROJECT::SCRAPER.new.catch
        MYFIRSTPROJECT::SCRAPER.new.cats_cradle
        MYFIRSTPROJECT::SCRAPER.new.santa_paula
        MYFIRSTPROJECT::SCRAPER.new.purrfect
        MYFIRSTPROJECT::SCRAPER.new.surf_cat
        MYFIRSTPROJECT::SCRAPER.new.grey_cat


    end
end