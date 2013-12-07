class Cause < ActiveRecord::Base
  attr_accessible :title, :link, :chime_reason, :category
  before_save :default_values
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Education Justice Health) }

  has_many :chimes

  # has_many :users, :through => :chimes
  
  def default_values
   self.chime_reason ||= 'because'
  end

end
