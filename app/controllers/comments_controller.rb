class CommentsController < ApplicationController
	def create
		@film = Film.find params[:film_id]
		@c = @film.comments.create(comment_params)
		@c.user = current_user
		@c.save
		redirect_to film_path(@film), notice: "Comment added"
	end

	def update
		comment = Comment.find params[:id]
		film = Film.find params[:film_id]
		respond_to do |format|
      		if comment.update_attributes(comment_params)
        		format.html { redirect_to film, notice: 'Comment was successfully updated.' }
        		format.json { head :no_content }
      		else
        		format.html { render action: 'edit' }
        		format.json { render json: @film.errors, status: :unprocessable_entity }
      		end
    	end
	end
	
	private

	def comment_params
    	params.require(:comment).permit(:body)
    end
end
