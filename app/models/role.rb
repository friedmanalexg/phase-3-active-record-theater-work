class Role < ActiveRecord::Base
    has_many :auditions


    def actors
        self.auditions.pluck(:actor)
    end
    def locations
        self.auditions.pluck(:location)
    end
    
    #lead returns the first instance of the audition that was hired for this role or returns a string 'no actor has been hired for this role'
    def lead
        actors = self.auditions.find_by( hired: true)
        actors ? actors : "no actor has been hired for this role"
    end
    
    #understudy returns the second instance of the audition that was hired for this role or returns a string 'no actor has been hired for understudy for this role'
    def understudy 
        actors = self.auditions.where( hired: true )
        actors.size > 1 ? actors.second : "no actor has been hired for understudy"

    end
end