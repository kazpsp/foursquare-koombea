class TipsController < ApplicationController
  
  before_filter :get_client
  
  def new
    @venue = @client.venue(params[:venue_id])
    begin
      @tips = @venue.tips.groups[0].items
    rescue
      flash[:error] = "no tipz"
      redirect_to root_path
    end
  end
end
