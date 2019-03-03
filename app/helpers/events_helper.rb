module EventsHelper
    def format_price(event)

        if event.free?
            #"<strong>Free!</strong>".html_safe
            content_tag(:strong, "Free!")
        else
            number_to_currency(event.price)
        end
    end    
end
