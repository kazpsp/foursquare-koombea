class UsersController < ApplicationController

  before_filter :get_client
  
  def index
  end
  
  def new
   begin
    search = @client.search_users(options = {:email => params[:email], :name => params[:name], :fbid => params[:fbid], :phone => params[:phone], :twitter => params[:twitter], :twitterSource => params[:twitterSource] })
    @results = search.results[0]
    @badges = @client.user_badges(@results.id)
    friends = @client.user_friends(@results.id)
    @friends = friends.items
   rescue
    flash[:error]="Error"
    redirect_to root_path
   end
  end
  
  def show       
  end
end
