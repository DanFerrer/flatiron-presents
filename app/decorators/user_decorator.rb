class UserDecorator < Draper::Decorator
  delegate_all

  def is_zombie
    if model.alive
      h.content_tag :h1, "I am alive", class: 'text-success'
    else
      h.content_tag :h1, "I am ZOMBIE!!", class: "text-success"
    end
  end


  def avatar
    if model.image_url
      h.image_tag model.image_url
    else
      h.image_tag 'default_user-image.png'
    end
  end

  def user_birthday
    if model.birthday.present?
      model.birthday
    else
      text_muted
    end
  end

  def user_bio
    if model.bio.present?
      model.birthday
    else
      text_muted
    end
  end

  def user_location
    if model.bio.present?
      model.birthday
    else
      text_muted
    end
  end


  private

  def text_muted
    h.content_tag :p, "None Given", class: "text-muted"
  end

end
