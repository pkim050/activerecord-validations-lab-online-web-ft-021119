class MyValidator < ActiveModel::Validator
  def validate(post)
    binding.pry
    unless post.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
      return false
    end
  end
end
