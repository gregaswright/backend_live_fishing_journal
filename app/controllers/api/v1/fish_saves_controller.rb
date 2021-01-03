class Api::V1::FishSavesController < ApplicationController
    skip_before_action :authorized

    def index
        @fish_saves = FishSave.all
        render json: @fish_saves
    end

    def show
        @fish_save = FishSave.find(params[:id])
        render json: @fish_save
    end

    def create
        @fish_save = FishSave.new(fish_save_params)
        unless @fish_save.save
            render json: { status: 500 }
        else
            render json: {
                status: :added,
                fish_save: @fish_save
            }
        end
    end

    def update
        @fish_save = FishSave.find(params[:id])
        if @fish_save.update(fish_save_params)
            render json: {
                status: :updated,
                fish_save: @fish_save
            }
        else
            render json: { status: 500 }
        end 
    end

    def destroy
        
        @fish_save = FishSave.find(params[:id])
        @fish_save.destroy
        render json: {}
    end

private

  def fish_save_params
    params.require(:fish_save).permit( :title, :latitude, :longitude, :user_id)
  end
end
