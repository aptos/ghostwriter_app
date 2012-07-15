class PreferencesController < ApplicationController

  def index
    render :json => ApplicationSettings.config
  end

end
