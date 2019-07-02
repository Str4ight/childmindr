class ChecklistsController < ApplicationController
  before_action :set_checklist, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in? && current_user.admin
      @checklists = Checklist.all
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
      @checklist = Checklist.new
    else
      redirect_to error_path
    end
  end

  def edit
  end

  def create
    if user_signed_in? && current_user.admin
      @checklist = Checklist.new(checklist_params)
      respond_to do |format|
        if @checklist.save
          format.html { redirect_to @checklist, notice: 'Checklist was successfully created.' }
          format.json { render :show, status: :created, location: @checklist }
        else
          format.html { render :new }
          format.json { render json: @checklist.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def update
    if user_signed_in? && current_user.admin
      respond_to do |format|
        if @checklist.update(checklist_params)
          format.html { redirect_to @checklist, notice: 'Checklist was successfully updated.' }
          format.json { render :show, status: :ok, location: @checklist }
        else
          format.html { render :edit }
          format.json { render json: @checklist.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to error_path
    end
  end

  def destroy
    if user_signed_in? && current_user.admin
      @checklist.destroy
      respond_to do |format|
        format.html { redirect_to checklists_url, notice: 'Checklist was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to error_path
    end
  end

  private
    def set_checklist
      @checklist = Checklist.find(params[:id])
    end

    def checklist_params
      params.require(:checklist).permit(:name)
    end
end
