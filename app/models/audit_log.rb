class AuditLog < ApplicationRecord
  enum status: { pending: 0, confirmed: 1}
  belongs_to :user
  before_update :set_end_date, if: :confirmed?
  validates_presence_of :user_id, :status, :start_date
  after_initialize :set_defaults

  private

  def set_end_date
    self.end_date = Date.today
  end

  def set_defaults
    self.start_date ||= Date.today - 6.days
  end
end
