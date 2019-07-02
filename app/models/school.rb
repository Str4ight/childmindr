class School < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_schools, use: :slugged

  mount_uploader :image, ImageUploader

  belongs_to :category_schooltype
  belongs_to :category_country
  belongs_to :category_region
  belongs_to :category_zone
  belongs_to :category_town
  belongs_to :user

  has_many :reviews

  validates_presence_of :name, presence: true, message: "can't be blank"
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_presence_of :address, presence: true, message: "can't be blank"
  validates_presence_of :postcode, presence: true, message: "can't be blank"
  validates_presence_of :telepone, presence: true, message: "can't be blank"
  validates_presence_of :category_country_id, presence: true, message: "can't be blank"
  validates_presence_of :category_region_id, presence: true, message: "can't be blank"
  validates_presence_of :category_zone_id, presence: true, message: "can't be blank"
  validates_presence_of :category_town_id, presence: true, message: "can't be blank"
  validates_presence_of :about, presence: true, message: "can't be blank"
  validates_presence_of :category_schooltype_id, presence: true, message: "can't be blank"
  validates_presence_of :pupils, numericality: { only_integer: true }, message: "can't be blank"
  validates_presence_of :start_age, numericality: { only_integer: true }, message: "can't be blank"
  validates_presence_of :end_age, numericality: { only_integer: true }, message: "can't be blank"

  scope :approved_schools, -> {where(['approve = ?', true])}

  scope :academy_converter_schools, ->() { joins(:category_schooltype).where('category_schooltypes.name' => "Academy Converter") }
  scope :academy_sponsor_led_schools, ->() { joins(:category_schooltype).where('category_schooltypes.name' => "Academy Sponsor Led") }
  scope :community_schools, ->() { joins(:category_schooltype).where('category_schooltypes.name' => "Community School") }
  scope :foundation_schools, ->() { joins(:category_schooltype).where('category_schooltypes.name' => "Foundation School") }
  scope :nursery_schools, ->() { joins(:category_schooltype).where('category_schooltypes.name' => "Nursery School") }
  scope :other_independent_schools, ->() { joins(:category_schooltype).where('category_schooltypes.name' => "Other Independent School") }
  scope :voluntary_aided_schools, ->() { joins(:category_schooltype).where('category_schooltypes.name' => "Voluntary Aided School") }
  scope :voluntary_controlled_school, ->() { joins(:category_schooltype).where('category_schooltypes.name' => "Voluntary Controlled School") }

  before_create :generate_reference_number

  def slug_schools
    [
      :name
    ]
  end

  def self.desc_order
    order('created_at DESC')
  end

  def self.asc_order
    order('created_at ASC')
  end

  def generate_reference_number
    begin
      reference_length = 6
      self.ref = "CM_" + Devise.friendly_token.first(reference_length)
    end while self.class.exists?(ref: ref)
  end

  #checks if current user has reviewed school
  def reviewed_school?(user)
    self.reviews.exists?(user: user)
  end


  def avg_ratings_teaching                                                                  #[2]
    if self.reviews.present?
      listed_rates = self.reviews.map {|review| review.category_ratingteaching.name.to_i }  #[2,2]
      sum_of_listed_rates = listed_rates.inject(0){|sum,x| sum + x }                        #4
      total_reviews_count = self.reviews.map(&:category_ratingteaching).count               #2
      average = sum_of_listed_rates / total_reviews_count                                   #4/2
    end
  end

  def avg_ratings_facility                                                                  #[3]
    if self.reviews.present?
      listed_rates = self.reviews.map {|review| review.category_ratingfacility.name.to_i }  #[4,3]
      sum_of_listed_rates = listed_rates.inject(0){|sum,x| sum + x }                        #7
      total_reviews_count = self.reviews.map(&:category_ratingfacility).count               #2
      average = sum_of_listed_rates / total_reviews_count                                   #7/2
    end
  end

  def avg_ratings_food                                                                      #[2]
    if self.reviews.present?
      listed_rates = self.reviews.map {|review| review.category_ratingfood.name.to_i }      #[3,1]
      sum_of_listed_rates = listed_rates.inject(0){|sum,x| sum + x }                        #4
      total_reviews_count = self.reviews.map(&:category_ratingfood).count                   #2
      average = sum_of_listed_rates / total_reviews_count                                   #4/2
    end
  end

  def avg_ratings_music                                                                     #[3]
    if self.reviews.present?
      listed_rates = self.reviews.map {|review| review.category_ratingmusic.name.to_i }     #[2,4]
      sum_of_listed_rates = listed_rates.inject(0){|sum,x| sum + x }                        #6
      total_reviews_count = self.reviews.map(&:category_ratingmusic).count                  #2
      average = sum_of_listed_rates / total_reviews_count                                   #6/2
    end
  end

  def avg_ratings_sport                                                                     #[3]
    if self.reviews.present?
      listed_rates = self.reviews.map {|review| review.category_ratingsport.name.to_i }     #[1,5]
      sum_of_listed_rates = listed_rates.inject(0){|sum,x| sum + x }                        #6
      total_reviews_count = self.reviews.map(&:category_ratingsport).count                  #2
      average = sum_of_listed_rates / total_reviews_count                                   #6/2
    end
  end

  def overall_avg_ratings
    if self.reviews.present?                                                          
      (avg_ratings_teaching + avg_ratings_facility + avg_ratings_food + avg_ratings_music + avg_ratings_sport) / 5
    end
  end
end
