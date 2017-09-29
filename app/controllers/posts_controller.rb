# frozen_string_literal: true

class PostsController < OpenReadController
  before_action :set_post, only: %i[show update destroy]
  before_action :post_params, only: [:update]

  # GET /posts
  def index
    @posts = Post.all

    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end

    #@post = Post.find(params[:id])
    # @post.update(post_params)
    # render json: @post

    #@post.update(params[:post])
    #if @post.update(post_params)

      #render json: @post
    #else
      #render json: @post.errors, status: :unprocessable_entity
    #end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy

    # head :no_content
  end

  private

  # Use callbacks to share # frozen_string_literal: true

  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
