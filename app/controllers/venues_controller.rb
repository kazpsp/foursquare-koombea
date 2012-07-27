class VenuesController < ApplicationController

 before_filter :get_client
  
  def new    
  begin  
    if params[:ll]==nil
       search=@client.search_venues(options = {:near => params[:near],:alt =>params[:alt], :limit =>"10", :query =>params[:query]})
       @results=search.groups[0].items
    end
    if params[:near]==nil
      if params[:alt]==""
        params[:alt]=1
      end
      search=@client.search_venues(options = {:ll => params[:ll], :limit =>"10", :query =>params[:query]})
      @results=search.groups[0].items
    end
  # rescue
    # flash[:error]="Error"
    # redirect_to root_path
  end
  end
end
