module Spaceable
  module Component
    extend ActiveSupport::Concern

    included do
    end

    module ClassMethods
      def acts_as_component
        class_eval do
          has_many :memories, :as => :component, :class_name => "Spaceable::Memory"
        end
      end
    end
  end
end

ActiveRecord::Base.send :include, Spaceable::Component

