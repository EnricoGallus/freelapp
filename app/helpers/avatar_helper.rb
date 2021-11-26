module AvatarHelper
  def user_avatar(user, size = 40)
    if user.avatar.attached?
      user.avatar.variant(resize: "#{size}x#{size}!")
    else
      "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email.downcase)}?size=#{size}"
    end
  end
end
