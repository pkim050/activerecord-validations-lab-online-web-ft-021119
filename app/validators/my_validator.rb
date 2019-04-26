class MyValidator < ActiveModel::Validator
  def validate(post)
    #binding.pry
    return false if post.title == nil
    if post.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
      return true
    else
      return false
    end
  end
end
