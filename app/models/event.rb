class Event < ApplicationRecord
    # if an event is free it is business logic, so goes in model
    def free?
        price.blank? || price.zero? 
    end    
end
