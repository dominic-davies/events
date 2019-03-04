class Event < ApplicationRecord
    # if an event is free it is business logic, so goes in model
    def free?
        price.blank? || price.zero? 
    end    

    def self.upcoming
        where("starts_at >= ?", Time.now).order("starts_at") 
    end   
end
