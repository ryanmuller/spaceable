module Spaceable
  module Learner
    def self.included(base)
      base.extend ClassMethods
    end

    ##
    # Make a model a learner that can have memories.
    module ClassMethods
      def acts_as_learner
        class_eval do
          has_many :memories, :as => :learner, :class_name => "Spaceable::Memory"
        end
      end
    end
  end
end

ActiveRecord::Base.send :include, Spaceable::Learner

