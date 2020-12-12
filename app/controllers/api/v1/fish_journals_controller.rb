class Api::V1::FishJournalsController < ApplicationController
    skip_before_action :authorized

    def index
        @fish_journals = FishJournal.all
        render json: @fish_journals
    end

    def show
        @fish_journal = FishJournal.find(params[:id])
        render json: @fish_journal
    end

    def create
        @fish_journal = FishJournal.new(fish_journal_params)
        unless @fish_journal.save
            render json: { status: 500 }
        else
            render json: {
                status: :added,
                fish_journal: @fish_journal
            }
        end
    end

    def update
        @fish_journal = FishJournal.find(params[:id])
        if @fish_journal.update(fish_journal_params)
            render json: {
                status: :updated,
                fish_journal: @fish_journal
            }
        else
            render json: { status: 500 }
        end 
    end

    def destroy
        
        @fish_journal = FishJournal.find(params[:id])
        @fish_journal.destroy
        render json: {}
    end

private

  def fish_journal_params
    params.require(:fish_journal).permit( :date, :fish_type, :fish_length :fish_weight, :moon_phase, :tide, :rod_setup, :note, :image, :pin_id)
  end

end
