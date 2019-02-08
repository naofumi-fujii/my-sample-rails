class CategoryPostsController < ApplicationController
  before_action :set_category_post, only: [:show, :edit, :update, :destroy]

  # GET /category_posts
  # GET /category_posts.json
  def index
    @category_posts = CategoryPost.all
  end

  # GET /category_posts/1
  # GET /category_posts/1.json
  def show
  end

  # GET /category_posts/new
  def new
    @category_post = CategoryPost.new
  end

  # GET /category_posts/1/edit
  def edit
  end

  # POST /category_posts
  # POST /category_posts.json
  def create
    @category_post = CategoryPost.new(category_post_params)

    respond_to do |format|
      if @category_post.save
        format.html { redirect_to @category_post, notice: 'Category post was successfully created.' }
        format.json { render :show, status: :created, location: @category_post }
      else
        format.html { render :new }
        format.json { render json: @category_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_posts/1
  # PATCH/PUT /category_posts/1.json
  def update
    respond_to do |format|
      if @category_post.update(category_post_params)
        format.html { redirect_to @category_post, notice: 'Category post was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_post }
      else
        format.html { render :edit }
        format.json { render json: @category_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_posts/1
  # DELETE /category_posts/1.json
  def destroy
    @category_post.destroy
    respond_to do |format|
      format.html { redirect_to category_posts_url, notice: 'Category post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_post
      @category_post = CategoryPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_post_params
      params.require(:category_post).permit(:category_id, :post_id)
    end
end
