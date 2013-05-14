class Url < ActiveRecord::Base
  attr_accessible :long
  before_create :generate_short

  private
  def generate_short
    self.short = SecureRandom.hex(3)        
  end
end
