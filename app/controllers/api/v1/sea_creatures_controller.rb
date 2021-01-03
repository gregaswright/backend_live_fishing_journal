class Api::V1::SeaCreaturesController < ApplicationController
    skip_before_action :authorized

    def index
        @sea_creatures = SeaCreature.all
        render json: @sea_creatures
    end

private

    def sea_creature_params
        params.require(:sea_creature).permit( :species_name, :taste, :texture, :biology, :habitat, :population_status, :phyiscal_description, :fisheries_region, :location, :availability, :image)
    end

end


# species_name taste texture biology habitat population_status phyiscal_description fisheries_region location availability image