class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map {|audition| audition.actor}
    end

    def locations
        self.auditions.map {|audition| audition.location}
        #self.auditions.pluck (:location)
        #pluck is an AR method
    end

    def lead
        if (self.auditions.find {|audition| audition.hired}) #find_by (AR equivalent)
            self.auditions.find {|audition| audition.hired}
        else
            'no actor has been hired for this role'
        end
    end

    def understudy
        potential_audition = self.auditions.where(hired: true).second
        if (potential_audition)
            potential_audition
        else
            'no actor has been hired for understudy for this role'
        end
    end

end