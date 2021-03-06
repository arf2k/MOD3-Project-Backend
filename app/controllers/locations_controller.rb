class LocationsController < ApplicationController

     def index
   
          locations = Location.all 
          
          if params[:setting]
             
               locations = Location.all.filter{|location| location.category_id == params[:setting].to_i}
           
          end
          render json: locations 

     end

    def show
     location = Location.find(params[:id])

     render json: location
    end



private 

def locations_params
     params.require(:locations).permit(:borough, :name, :address, :contact_name, :contact_phone, :image_url, :category_id)
end


end