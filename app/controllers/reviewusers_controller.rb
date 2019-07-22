class ReviewusersController < ApplicationController
  before_action :set_reviewuser, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @reviewusers = Reviewuser.all
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
      @parent = current_user
      @provider = User.friendly.find(params[:provider_id])
      @reviewuser = @provider.reviewusers.build
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
    @parent = current_user
    @provider = User.friendly.find(params[:user_id])
    @reviewuser = @provider.reviewusers.create(reviewuser_params)
    @reviewuser.parent_id = @parent.id
    @reviewuser.provider_id = @provider.id

    respond_to do |format|
      if @reviewuser.save
        format.html { redirect_to user_path(@provider), notice: 'Review was successfully added.' }
        format.json { render :show, status: :created, location: @reviewuser }
      else
        format.html { redirect_to user_path(@provider), notice: 'Review was not added.' }
      end
    end
  end

  def update
    if user_signed_in? && current_user.admin
      @parent = current_user
      respond_to do |format|
        if @reviewuser.update(reviewuser_params)
          format.html { redirect_to @user, notice: 'Review was successfully updated.' }
          format.json { render :show, status: :ok, location: @reviewuser }
        else
          format.html { render :edit }
          format.json { render json: @reviewuser.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @provider = User.friendly.find(params[:provider_id])
      @reviewuser = @provider.reviewusers.find(params[:id])
      @reviewuser.destroy
      redirect_to @user
    else
      redirect_to error_path
    end
  end

  private
    def set_reviewuser
      @reviewuser = Reviewuser.find(params[:id])
    end

    def reviewuser_params
      params.require(:reviewuser).permit(:content, :user_id, :title, :category_ratingcommunication_id, :category_ratingclean_id, :category_ratingfood_id, :category_ratingsetting_id)
    end
end
