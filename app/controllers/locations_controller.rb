class LocationsController < ApplicationController

     def index
          locations = Location.all 
          
          
          render json: locations 

     end


     # def show 
     #      location = Location.find_by(params[:id])

     #      render json: locations, except: [:updated_at, :created_at] 
     # end

end
