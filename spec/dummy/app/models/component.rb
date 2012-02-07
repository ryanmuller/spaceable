class Component < ActiveRecord::Base
  has_many :memories, :as => :component
end
