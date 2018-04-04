class Chain < ApplicationRecord
  validates :initial, :all, :result, presence: true
  validates :initial, uniqueness: true

  def transform_data
  	attributes.slice('initial', 'all' ,'result')
  end
end
