module UsersHelper  
  def avatar(user)
    email_digest = Digest::MD5.hexdigest(user.email)
    gravatar_url = "//www.gravatar.com/avatar/#{email_digest}"
    image_tag gravatar_url
  end

  def follow_button(user)
    if(current_user.following?(user))
      button_to "unfollow", unfollow_user_path, method: :delete
    else
      button_to "follow", follow_user_path
    end
  end
end
