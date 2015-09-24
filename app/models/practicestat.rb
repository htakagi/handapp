class Practicestat < ActiveRecord::Base
  belongs_to :practice
  belongs_to :player
end
