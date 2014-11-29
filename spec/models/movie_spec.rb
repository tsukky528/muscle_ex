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

require 'rails_helper'

RSpec.describe Movie, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
