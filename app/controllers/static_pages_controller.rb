class StaticPagesController < ApplicationController
  def homepg
    @search_school = School.search(params[:q])
    @schools = @search_school.result(distinct: true).approved_schools.order("created_at DESC")
    @search = User.client_providers.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end

  def aboutpg
    @search = School.search(params[:q])
    @schools = @search.result(distinct: true).approved_schools.order("created_at DESC")
    @category = CategorySearch.all
  end

  def advisepg
    @search = School.search(params[:q])
    @schools = @search.result(distinct: true).approved_schools.order("created_at DESC")
    @category = CategorySearch.all
  end

  def contactpg
    @search = School.search(params[:q])
    @schools = @search.result(distinct: true).approved_schools.order("created_at DESC")
    @category = CategorySearch.all
  end

  def faqpg
  end

  def latestratingspg
    @search = School.search(params[:q])
    @schools = @search.result(distinct: true).approved_schools.order("created_at DESC")
    @category = CategorySearch.all
  end

  def findingtherightschoolpg 
    @search = School.search(params[:q])
    @schools = @search.result(distinct: true).approved_schools.order("created_at DESC")
    @category = CategorySearch.all
  end

  def termspg
  end

  def privacypg
  end

  def cookiesettingpg
  end

  def parentingguidespg
    @search = School.search(params[:q])
    @schools = @search.result(distinct: true).approved_schools.order("created_at DESC")
    @category = CategorySearch.all
  end

  def errorpg
  end

  def safetyadvisepg
  end

  def providerdocumentpg
  end


  # ------------ user_types ------------
  def childcarerspg
    @search = User.client_providers.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end

  def usersbabysitterspg
    @search = User.babysitters.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end

  def userschildminderspg
    @search = User.childminders.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end

  def usersmaternitynursespg
    @search = User.maternity_nurses.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end

  def usersnanniespg
    @search = User.nannies.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end

  def usersaupairspg
    @search = User.au_pairs.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end

  def usersnurserynursespg
    @search = User.nursery_nurse.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end

  def usersprivatemidwivespg
    @search = User.private_midwives.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end

  def usershouseholdhelpspg
    @search = User.household_helps.search(params[:q])
    @users = @search.result(distinct: true).order("created_at DESC")
  end
  # ------------ user_types ------------
end
