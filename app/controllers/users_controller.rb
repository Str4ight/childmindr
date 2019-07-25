class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.asc_order
    @user = current_user
  end

  def show
    @reviewuser = Reviewuser.new
    @schools = School.all
    @users = User.asc_order
  end

  def new
    @user = User.new
  end

  def edit
    if current_user == @user || current_user.admin || current_user.primary_admin
      @user = User.friendly.find(params[:id])
    else
      redirect_to error_path
    end
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if current_user == @user || current_user.admin || current_user.primary_admin
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'Profile was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if current_user.admin || current_user.primary_admin
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    def set_user
      @user = User.friendly.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:firstname, :lastname, :admin, :category_role_id, :category_segment_id, :birthdate, :terms, :postcode, :category_service_id, :category_gender_id, :category_country_id, :category_region_id, :category_zone_id, :category_town_id, :price, :about, :experience, :qualifications, :availability, :parent_id, :provider_id, :ref, :mondays, :tuesdays, :wednesdays, :thursdays, :fridays, :saturdays, :sundays, :mstart_time, :mend_time, :tstart_time, :tend_time, :wstart_time, :wend_time, :thstart_time, :thend_time, :fstart_time, :fend_time, :sstart_time, :send_time, :sustart_time, :suend_time, :approve, :image, :telephone, :fake, checklist_ids: [])
    end
end
