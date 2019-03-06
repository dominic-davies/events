class EventsController < ApplicationController

    def index
        # was  @events = Event.all
        @events = Event.upcoming
    end

    def show
        @event = Event.find(params[:id])
    end

    def edit
        @event = Event.find(params[:id])
    end

    def update
        @event = Event.find(params[:id])
        @event.update(event_params)
        # render "show" ( is get not patch) if reload page will think you are trying to resubmit
        redirect_to @event
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to @event
        else
            render :new
        end
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to events_url
    end

    private

    def event_params
        event_params = params.require(:event).permit(:name, :description, :location, :price, :starts_at, :image_file_name, :capacity)
    end
end
