class TimecardsController < ApplicationController

    def index
        render :json => Timecard.all
    end

    def show
        render :json => Timecard.find(params[:id])
    end

    def create
        render :json => Timecard.create!(params)
    end

    def update
        timecard = Timecard.find(params[:id])
        timecard.update_attributes!(params)
        render :json => timecard
    end

    def destroy
        timecard = Timecard.find(params[:id])
        timecard.destroy
        render :json => timecard
    end
end
