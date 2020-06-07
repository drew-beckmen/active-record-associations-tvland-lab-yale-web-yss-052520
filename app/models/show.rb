class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network 

    # Use the method you already wrote in Actor class!
    def actors_list 
        self.actors.collect {|actor| actor.full_name}
    end 
end