class CommentsController < ApplicationController

    def create
        comment = Comment.create(comment_params)
        redirect_to post_path(comment.post_id)
    end 

    private

    def comment_params
        params.require(:comment).permit(:post_id, :user_id, :content)
    end 
end 