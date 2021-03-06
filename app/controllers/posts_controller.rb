class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_current_supplier, only: [:show, :edit, :update, :destroy, :create]


  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    @q = Post.ransack(params[:q])
    @posts = @q.result    #(distinct: true)
  end



  # GET /posts/1
  # GET /posts/1.json
  def show
    @comments = Comment.all
    @comments = @post.comments
    @comment = Comment.new
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
    @comment = Comment.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @comment = Comment.new

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    authorize @post
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def set_current_supplier
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:item_name, :item_description, :supplier_name, :supplier_description, :user_id, {images: []}, :user_name, :title, :content, :comment)
    # params.require(:post).permit(policy(@post).permitted_attributes
    end
end
