json.extract! review, :id, :content, :user_id, :school_id, :category_ratingteaching_id, :created_at, :updated_at
json.url review_url(review, format: :json)
