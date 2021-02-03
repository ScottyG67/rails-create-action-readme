class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    #byebug
    @post = Post.new
  end

  # add create method here
  def create
    
    @post= Post.new
    @post.title = params[:title]
    @post.description = params[:description]

    if @post
      @post.save
      redirect_to @post
    end

  end
end
