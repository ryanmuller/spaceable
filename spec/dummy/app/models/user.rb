class User < ActiveRecord::Base
  has_many :memories, :as => :learner
end
