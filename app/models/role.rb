class Role < ActiveRecord::Base 
    has_many :auditions

   
    def actors 
        self.auditions.pluck(:actor)
    end 

    def locations
        self.auditions.pluck(:location)
    end

    def lead 
        #this is wrong
        self.auditions.where("hired = true") 

    end

    def understudy
        #if self.auditions.second is not nil,
        #return self.audtions.second
        #else return 'no actor has been hired for understudy for this role'

    end
end