class DoneStep < ApplicationRecord
    belongs_to :user
    belongs_to :step
end
