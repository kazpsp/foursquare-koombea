module VenuesHelper
  
  private
  def get_icon(venue)
    cat = venue["categories"][0].to_a
      c=cat[4].to_a
      r=c[1]    
  end    
end
