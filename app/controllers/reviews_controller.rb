class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @reviews = Review.all
    else
      redirect_to error_path
    end
  end

  def show
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def new
    if user_signed_in? && current_user.admin
      @user = current_user
      @school = School.friendly.find(params[:id])
      @review = @school.reviews.build
    else
      redirect_to error_path
    end
  end

  def edit
    unless user_signed_in? && current_user.admin
      redirect_to error_path
    end
  end

  def create
    @user = current_user
    @school = School.friendly.find(params[:school_id])
    @review = @school.reviews.create(review_params)
    respond_to do |format|
      if @review.save
        format.html { redirect_to @school, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { redirect_to @school, notice: 'Review was not created.' }
      end
    end
  end

  def update
    if user_signed_in? && current_user.admin
      @user = current_user
      respond_to do |format|
        if @review.update_attributes(review_params)
          format.html { redirect_to @school, notice: 'Review was successfully updated.' }
          format.json { render :show, status: :ok, location: @review }
        else
          format.html { render :edit }
          format.json { render json: @review.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @school = Schoool.friendly.find(params[:school_id])
      @review = @school.reviews.find(params[:id])
      @review.destroy
      redirect_to schools_path
    else
      redirect_to error_path
    end
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:content, :user_id, :school_id, :category_ratingteaching_id, :title, :category_ratingfacility_id, :category_ratingfood_id, :category_ratingmusic_id, :category_ratingsport_id)
    end
end
