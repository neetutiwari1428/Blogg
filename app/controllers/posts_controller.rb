class PostsController < InheritedResources::Base
  require "prawn"
  def index
    @posts = Post.all
  end
  def pdf 
    @posts = Post.find(params[:id])
    pdf = Prawn::Document.new
    pdf.text @posts.title ,size: 20, style: :bold
    
    send_data(pdf.render ,
              filename: "#{@posts.title}.pdf",
              type:"application/pdf",
              disposition:"inline")
  end
  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
