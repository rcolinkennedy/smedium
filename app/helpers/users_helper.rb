module UsersHelper

# Returns the Gravatar (http://gravatar.com/) for the given user.
  def portrait_for(user)
    image_url = user.image
    image_tag(image_url, alt: user.nickname, class: "gravatar")
  end

end
