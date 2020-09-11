class PostsController < ApplicationController
    after_action :verify_authorized, only: [:new, :create, :edit, :destroy]

    
    def index
        @posts = Post.all
    end 

    def new
        @post = Post.new
        authorize @post
    end 

    def show
        @post = Post.find(params[:id])
        @comment = Comment.new
    end 

    def create
        @post = Post.create(post_params)
        authorize @post
        redirect_to supe_path(@post.supe)
    end 

    def update
        @post = Post.find(params[:id])
        authorize @post
        @post.update(likes: params[:likes])
        redirect_back fallback_location: user_home_path
    end 

    private

    def post_params
        params.require(:post).permit(:supe_id, :content, :likes, :post_file)
    end 
end
