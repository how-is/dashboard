class Report < ApplicationRecord
  serialize :json, JSON

  def to_param
    created_at.to_date.iso8601
  end
end
