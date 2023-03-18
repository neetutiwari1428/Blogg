class WelcomePdf < Prawn::Document
    def initialize(posts)
        super()
        @posts = Post.order("id DESC").all
        post_id
        #text "Hello there"
    end
end