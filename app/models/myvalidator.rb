class MyValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
      return false
    end
  end
end
