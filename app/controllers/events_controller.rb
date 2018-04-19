class EventsController < ApplicationController
    def new
    end
    def create_event
        events = Event.new(event_name: params[:event_name], event_date: params[:event_date], event_location: params[:event_location], event_state: params[:event_state], event_host: params[:event_host], event_action: params[:event_action], event_owner: params[:event_owner])
        if !events.valid?
            flash[:errors] = "Invalid input"
            redirect_to '/'
            
        else
            events.save
            # session[:user] = events.user
            # if session[:num]
            #     session[:num] += 1
            # else
            #     session[:num] = 1
            # end
            # flash[:success] = "You have submitted this form #{session[:num]} times now."
            # redirect_to '/results'
        end
    end
    def destroy
        
    end
    def update 
        @eventup = Event.find(1)
        @eventup.event_name = "Some Other Name"
        @eventup.event_state = "CA"
        @eventup.save
        
    end
end
