class MyValidator < ActiveModel::Validator
  def validate(post)
    binding.pry
    return false if post.title == nil
    unless post.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
      return false
    end
  end
end
