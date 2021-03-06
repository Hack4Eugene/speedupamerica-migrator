class ProviderStatistic < ActiveRecord::Base
  validates :name,
            :applications,
            :rating,
            :advertised_to_actual_ratio,
            :average_price,
            :provider_type,
            presence: true

  scope :not_empty, -> { where.not(applications: 0) }
  scope :get_by_name, -> (name) { where(name: name) }
end
