# == Schema Information
#
# Table name: avatars
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  skin_tone  :string(255)
#  gender     :string(255)
#

class Avatar < ActiveRecord::Base
  belongs_to :user
end
