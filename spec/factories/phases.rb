# == Schema Information
#
# Table name: phases
#
#  id         :integer          unsigned, not null, primary key
#  project_id :integer          unsigned, not null
#  name       :string(255)
#  start_at   :datetime
#  end_at     :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_phases_on_project_id_and_end_at_and_start_at  (project_id,end_at,start_at)
#

FactoryBot.define do
  factory :phase do
    name "MyString"
    start_at "2018-03-02 13:49:46"
    end_at "2018-03-02 13:49:46"
  end
end
