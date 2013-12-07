class Resonate < ActiveRecord::Base
  attr_accessible :chime_id, :user_id
  validates :user_id, :uniqueness => { :scope => :chime_id }
  belongs_to :chime
  belongs_to :user
end
