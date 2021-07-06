class PostValidator < ActiveModel::Validator
    def validate(post)

        clickbait = ["Won't Believe","Secret","Top #{1..10}", "Guess"]

        if post.title != nil
            if clickbait.none? {|bait| post.title.include?(bait)}
                post.errors[:post] << "Title ain't clickbait"
            end 
        end
    end
end