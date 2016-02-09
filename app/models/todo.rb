class Todo < ActiveRecord::Base
  after_initialize :default_values

  validates :name, presence: true

  private
  def default_values
    self.done = false
  end
end
