class PoemCommentsController < ApplicationController
  def create
    @poem = Poem.find(params[:poem_id])
    @comment = @poem.poem_comments.create(comment_params)
    redirect_to poem_path(@poem)
  end
 
  def destroy
    @poem = Poem.find(params[:poem_id])
    @poem_comment = @poem.poem_comments.find(params[:id])
    @poem_comment.destroy
    redirect_to poem_path(@poem)
  end

  private
    def comment_params
      params.require(:poem_comment).permit(:content)
    end
end
