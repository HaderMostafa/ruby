class Admin < ApplicationRecord
    has_many :products

    def name_with_initial
        "#{name}"
      end
end
