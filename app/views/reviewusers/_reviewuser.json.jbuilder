json.extract! reviewuser, :id, :content, :user_id, :title, :category_ratingclean_id, :created_at, :updated_at
json.url reviewuser_url(reviewuser, format: :json)
