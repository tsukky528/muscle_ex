# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  movie_id   :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_likes_on_movie_id              (movie_id)
#  index_likes_on_user_id               (user_id)
#  index_likes_on_user_id_and_movie_id  (user_id,movie_id) UNIQUE
#

class Like < ActiveRecord::Base
    belongs_to :user, class_name: "User"
    belongs_to :movie, class_name: "Movie"
    validates :user_id, presence: true
    validates :movie_id, presence: true
end
