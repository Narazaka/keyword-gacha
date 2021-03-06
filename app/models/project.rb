# == Schema Information
#
# Table name: projects
#
#  id         :integer          unsigned, not null, primary key
#  sid        :string(32)       not null
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_projects_on_sid  (sid)
#

class Project < ApplicationRecord
end
