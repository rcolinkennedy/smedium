module UsersHelper

# Returns the Twitter image for the given user.
  def portrait_for(user, size)
    
    # Twitter
    # mini (24x24)                                                                  
    # normal (48x48)                                            
    # bigger (73x73)                                                
    # original (variable width x variable height)

    if user.image.include? "twimg"

      # determine filetype        
      case 
      when user.image.downcase.include?(".jpeg")
          filetype = ".jpeg"
      when user.image.downcase.include?(".jpg")
          filetype = ".jpg"
      when user.image.downcase.include?(".gif")
          filetype = ".gif"
      when user.image.downcase.include?(".png")
          filetype = ".png"
      else
          raise "Unable to read filetype of Twitter image for User ##{self.id}"
      
      end
    end

        # return requested size - code not used yet, but may be later
    #     if size == "original"
    #         return self.image
    #     else
    #         return .image.gsub(filetype, "_#{size}#{filetype}")
    #     end

    # end

    image_url = user.image.gsub(filetype, "_#{size}#{filetype}")
    image_tag(image_url, alt: user.nickname, class: "portrait")
  end

end
