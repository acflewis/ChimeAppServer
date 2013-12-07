class Chime < ActiveRecord::Base
  attr_accessible :cause_id, :reason, :user_id

  belongs_to :user
  
  belongs_to :cause
  
  has_many :resonates
  
  def as_json(options = {})
     super options.merge(:include => :cause)
   end

end
