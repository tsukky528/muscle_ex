# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  movie      :string(255)
#  explain    :text
#  muscle     :integer
#  created_at :datetime
#  updated_at :datetime
#  title      :string(255)
#  score      :integer          default(0)
#

class Movie < ActiveRecord::Base
    has_many :likes, foreign_key:"movie_id", dependent: :destroy
    has_many :users, through: :likes

    validates :movie, presence: true
    validates :explain, presence: true
    validates :muscle, presence: true, inclusion: {in: 0..4}
    validates :title, presence: true

    enum muscle: %i{chest abs back arm leg}

    scope :recent, -> { order(created_at: :desc)}

    scope :chest, -> {where(muscle: 0)}
    scope :abs, -> {where(muscle: 1)}
    scope :back, -> {where(muscle: 2)}
    scope :arm, -> {where(muscle: 3)}
    scope :leg, -> {where(muscle: 4)}

    scope :ranking, -> {order(score: :desc).limit(8)}

end
