# == Schema Information
#
# Table name: phases
#
#  id         :integer          unsigned, not null, primary key
#  name       :string(255)
#  start_at   :datetime
#  end_at     :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_phases_on_end_at_and_start_at  (end_at,start_at)
#

class Phase < ApplicationRecord
end
