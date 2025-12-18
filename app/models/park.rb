class Park < ApplicationRecord
  enum :data_source, { nps: 0, recreation_gov: 1 }
  validates :nps_id, :name, presence: true
end
