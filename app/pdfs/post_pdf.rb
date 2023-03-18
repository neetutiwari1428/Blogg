class PostPdf < Prawn::Document
    def initialize(posts)
        super()
        @posts = Post.order("id DESC").all
        post_id
        #text "Hello there"
    end
    def post_id
        # text "Hello neetu"
        table post_id_all do
            # row(0).font_style = :bold
            # column(1..3).align = :right
        end
        #  text @post.title ,size: 48,style: :bold 
        #  text @post.body 
        #  image = StringIO.open(@post.image.download)

    end
    def post_id_all
        [["title", "body","image"]]+
        @posts.map do |post|
            [post.title,post.body]
        end
    end
end