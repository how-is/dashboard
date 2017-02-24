class Report < ApplicationRecord
  serialize :json, JSON

  scope :repo, -> (name) { where(repo: name) }
  scope :on_date, -> (date) {
    where("created_at >= ? AND created_at <= ?",
      Date.parse(date).beginning_of_day,
      Date.parse(date).end_of_day)
  }

  def data
    json.to_h
  end

  def to_param
    created_at.to_date.iso8601
  end
end
