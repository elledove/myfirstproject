class MYFIRSTPROJECT::Adoption
attr_accessor :name, :address, :phone_number
@@all = []
    def initialize(name, address, phone_number)
        @name = name 
        @address = address
        @phone_number = phone_number
        @@all << self
    end

   def self.all
    @@all
   end

    def self.find(user_input)
   self.all[user_input-1]
   end




end

