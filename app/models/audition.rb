class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    # self.hired = true
    # self.save

    # ^ does the same thing
    #update - takes in a hash
    self.update(hired: true)
  end
end