module ApplicationHelper

  def avatar_url(user)
    if user.avatar.present?
      return cl_image_path(user.avatar)
    elsif user.facebook_picture_url.present?
      return user.facebook_picture_url
    else
      return "user-icon.png"
    end
  end

end
