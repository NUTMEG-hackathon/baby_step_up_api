class Step < ApplicationRecord
    belongs_to :template
    has_many :done_steps
end
