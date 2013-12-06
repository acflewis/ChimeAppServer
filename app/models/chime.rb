class Chime < ActiveRecord::Base
  attr_accessible :cause_id, :reason, :user_id

  # belongs_to :user
  
  belongs_to :cause

end
