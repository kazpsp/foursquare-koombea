module UsersHelper
  
  private
  def get_url(badge)
    url=badge[1]["image"]["prefix"]+badge[1]["image"]["sizes"][1].to_s+badge[1]["image"]["name"]
    url
  end
  
  def default_img(badge)
    if badge[1]["image"]["name"]!="/default_off.png"
      true
    else
      false
    end        
  end 
  
end

