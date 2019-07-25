class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  def index
    @search = School.search(params[:q])
    @schools = @search.result(distinct: true).approved_schools.order("created_at DESC")
    @category = CategorySearch.all
  end

  def show
    @review = Review.new
  end

  def new
    if user_signed_in? && current_user.admin || current_user.primary_admin
      @user = current_user
      @school = @user.schools.build
    else
      redirect_to error_path
    end
  end

  def edit
    unless user_signed_in? && current_user.admin || current_user.primary_admin
      redirect_to error_path
    end
  end

  def create
    if user_signed_in? && current_user.admin || current_user.primary_admin
      @user = current_user
      @school = @user.schools.create(school_params)
      # @school.town = @school.category_town_id
      respond_to do |format|
        if @school.save
          format.html { redirect_to @school, notice: 'Nursery was successfully created.' }
          format.json { render :show, status: :created, location: @school }
        else
          format.html { render :new }
          format.json { render json: @school.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin || current_user.primary_admin
      @user = current_user
      # @school.town = @school.category_town_id
      respond_to do |format|
        if @school.update_attributes(school_params)
          format.html { redirect_to @school, notice: 'Nursery was successfully updated.' }
          format.json { render :show, status: :ok, location: @school }
        else
          format.html { render :edit }
          format.json { render json: @school.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin || current_user.primary_admin
      @user = current_user
      @school = @user.schools.friendly.find(params[:id])
      @school.destroy
      respond_to do |format|
        format.html { redirect_to schools_url, notice: 'Nursery was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to error_path
    end
  end

  private
    def set_school
      @school = School.friendly.find(params[:id])
    end

    def school_params
      params.require(:school).permit(:name, :image, :about, :service, :email, :telepone, :address, :latitude, :longitude, :postcode, :pupils, :offsetreportlink, :approve, :category_schooltype_id, :category_country_id, :category_region_id, :user_id, :start_age, :end_age, :category_zone_id, :town, :category_town_id, :ref, :fake)
    end
end
