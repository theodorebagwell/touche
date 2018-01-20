class SiteInfo < ApplicationRecord
  has_many :site_contents
  scope :active, -> { where(active: true) }
end
