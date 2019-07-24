class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable 

  extend FriendlyId
  friendly_id :slug_users, use: :slugged

  mount_uploader :image, ImageUploader

  belongs_to :category_role, dependent: :destroy, optional: true
  belongs_to :category_segment
  belongs_to :category_country
  belongs_to :category_region
  belongs_to :category_zone
  belongs_to :category_town

  belongs_to :category_gender
  belongs_to :category_service

  has_many :schools
  has_many :reviews, dependent: :destroy
  has_many :reviewusers, dependent: :destroy

  has_and_belongs_to_many :checklists

  validates_presence_of :firstname, presence: true, message: "can't be blank"
  validates_presence_of :lastname, presence: true, message: "can't be blank"
  validates_presence_of :telephone, presence: true, message: "can't be blank"
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_presence_of :category_gender_id, presence: true, message: "can't be blank"
  validates_presence_of :category_country_id, presence: true, message: "can't be blank"
  validates_presence_of :category_town_id, presence: true, message: "can't be blank"
  validates_presence_of :category_segment_id, presence: true, message: "can't be blank"
  validates_presence_of :terms, presence: true, message: "can't be blank"

  before_create :assign_user_to_role
  before_create :generate_reference_number

  scope :admins, ->() { joins(:category_role).where('category_roles.name' => "Admin") }
  scope :primary_admins, ->() { joins(:category_role).where('category_roles.name' => "Primary admin") }
  scope :clients, ->() { joins(:category_role).where('category_roles.name' => "Client") }
  scope :client_providers, ->() { joins(:category_segment).where('category_segments.name' => "Service Provider") }
  scope :client_parents, ->() { joins(:category_segment).where('category_segments.name' => "Parent") }

  scope :au_pairs, ->() { joins(:category_service).where('category_services.name' => "Au Pair") }
  scope :babysitters, ->() { joins(:category_service).where('category_services.name' => "Babysitter") }
  scope :childminders, ->() { joins(:category_service).where('category_services.name' => "Childminder") }
  scope :maternity_nurses, ->() { joins(:category_service).where('category_services.name' => "Maternity Nurse") }
  scope :nannies, ->() { joins(:category_service).where('category_services.name' => "Nanny") }
  scope :nursery_nurse, ->() { joins(:category_service).where('category_services.name' => "Nursery Nurse") }
  scope :private_midwives, ->() { joins(:category_service).where('category_services.name' => "Private Midwife") }
  scope :household_helps, ->() { joins(:category_service).where('category_services.name' => "Household Help") }

  def slug_users
    [
      :firstname
    ]
  end

  def generate_reference_number
    begin
      reference_length = 6
      self.ref = "CM_" + Devise.friendly_token.first(reference_length)
    end while self.class.exists?(ref: ref)
  end

  def reviewed_user?(user)
    self.reviewusers.exists?(parent: user)
  end

  def admin
    category_role.name == "Admin"
  end 

  def primary_admin
    category_role.name == "Primary admin"
  end 

  def client
    category_role.name == "Client"
  end 

  def service_provider?
    if self.category_segment_id.present?
      category_segment.name == "Service Provider"
    end
  end 

  def parent?
    if self.category_segment_id.present?
      category_segment.name == "Parent"
    end
  end 

  def assign_user_to_role
    self.category_role = CategoryRole.where(name:'Client').first
  end

  def self.desc_order
    order('created_at DESC')
  end

  def self.asc_order
    order('created_at ASC')
  end


  def avg_ratings_communication                                                               
    if self.reviewusers.present?
      listed_rates = self.reviewusers.map {|review| review.category_ratingcommunication.name.to_i }  
      sum_of_listed_rates = listed_rates.inject(0){|sum,x| sum + x }                      
      total_reviews_count = self.reviewusers.map(&:category_ratingcommunication).count            
      average = sum_of_listed_rates / total_reviews_count                                   
    end
  end

  def avg_ratings_cleanliness                                                             
    if self.reviewusers.present?
      listed_rates = self.reviewusers.map {|review| review.category_ratingclean.name.to_i }  
      sum_of_listed_rates = listed_rates.inject(0){|sum,x| sum + x }                      
      total_reviews_count = self.reviewusers.map(&:category_ratingclean).count               
      average = sum_of_listed_rates / total_reviews_count                                  
    end
  end

  def avg_ratings_food                                                            
    if self.reviewusers.present?
      listed_rates = self.reviewusers.map {|review| review.category_ratingfood.name.to_i }  
      sum_of_listed_rates = listed_rates.inject(0){|sum,x| sum + x }                      
      total_reviews_count = self.reviewusers.map(&:category_ratingfood).count               
      average = sum_of_listed_rates / total_reviews_count                                  
    end
  end

  def avg_ratings_setting                                                            
    if self.reviewusers.present?
      listed_rates = self.reviewusers.map {|review| review.category_ratingsetting.name.to_i }  
      sum_of_listed_rates = listed_rates.inject(0){|sum,x| sum + x }                      
      total_reviews_count = self.reviewusers.map(&:category_ratingsetting).count               
      average = sum_of_listed_rates / total_reviews_count                                  
    end
  end

  def overall_avg_ratings
    if self.reviewusers.present?                                                          
      (avg_ratings_communication + avg_ratings_cleanliness + avg_ratings_food + avg_ratings_setting) / 4
    end
  end

  protected
  # deactivates confirmable
  def confirmation_required?
    false
  end
end
