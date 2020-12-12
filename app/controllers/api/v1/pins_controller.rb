class Api::V1::PinsController < ApplicationController
    skip_before_action :authorized

    def index
        @pins = Pin.all
        render json: @pins
    end

    def show
        @pin = Pin.find(params[:id])
        render json: @pin
    end

    def create
        @pin = Pin.new(pin_params)
        unless @pin.save
            render json: { status: 500 }
        else
            render json: {
                status: :added,
                pin: @pin
            }
        end
    end

    def update
        @pin = Pin.find(params[:id])
        if @pin.update(pin_params)
            render json: {
                status: :updated,
                pin: @pin
            }
        else
            render json: { status: 500 }
        end 
    end

    def destroy
        
        @pin = Pin.find(params[:id])
        @pin.destroy
        render json: {}
    end

private

  def pin_params
    params.require(:pin).permit( :title, :latitude, :longitude, :user_id)
  end
    
end
