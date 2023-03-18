class PostsController < InheritedResources::Base
  require "prawn"
  
  def index
    @posts = Post.order("id DESC").all
    respond_to do |format|
      format.html 
      format.pdf do
        # pdf = Prawn::Document.new
        pdf = PostPdf.new(@posts)
        send_data(pdf.render ,filename: "neetu.pdf",type:"application/pdf",disposition:"inline")
      end
    end
    # @posts = Post.all
    
  end
  def preview
  end
  #  def pdf 
  #   @posts = Post.find(params[:id])
  #   pdf = Prawn::Document.new
  #   pdf.text @posts.title ,size: 20, style: :bold
  #   send_data(pdf.render ,filename: "#{@posts.title}.pdf",type:"application/pdf",disposition:"inline")
  # end
  
  private

  def post_params
    params.require(:post).permit(:title, :body,:image)
  end

end
