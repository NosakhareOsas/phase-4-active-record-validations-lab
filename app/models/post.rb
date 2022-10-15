class Post < ApplicationRecord
    validates :title, presence: true, exclusion: {in: %w(True Facts)}
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "is not included in the list" }
    validates_with MustContainClickbait
    

    # def must_contain_clickbait
    #     unless title.match?(/Won't Believe|Secret|Top [number]|Guess/)
    #         errors.add(:title, "true facts not allowed")
    #     end
    # end

    # unless title.match?(/Won't Believe | Secret | Top [number] | Guess /)
        #     errors.add(:title, "true facts not allowed")
        # end ###message: "%{value} is not a valid category" #####title.include?("Won't Believe") || title.include?("Secret") || title.include?("Top [number]") || title.include?("Guess")
end
