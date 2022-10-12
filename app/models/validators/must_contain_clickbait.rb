class MustContainClickbait < ActiveModel::Validator
    #My answer works in rails c but doesnt pass rspec
    
    def validate(record)
        unless record.title.match?(/Won't Believe|Secret|Top \d|Guess/i) 
            record.errors.add(:title, "is not click baity enough!!!!")
        end
    end

    #solution passes rspec and also works in rails c

    # CLICKBAIT_PATTERNS = [
    #   /Won't Believe/i,
    #   /Secret/i,
    #   /Top \d/i,
    #   /Guess/i
    # ]
  
    # def validate(record)
    #   if CLICKBAIT_PATTERNS.none? { |pat| pat.match record.title }
    #     record.errors.add(:title, "must be clickbait")
    #   end
    # end
end