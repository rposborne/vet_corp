class Pet < ActiveRecord::Base
  has_many :visits
  belongs_to :client

  def last_visit_on
    last_visit.try(:visited_on)
  end
  def last_visit
    visits.order(visited_on: :desc).last
  end
end
