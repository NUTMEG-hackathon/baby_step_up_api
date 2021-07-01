class Template < ApplicationRecord
    belongs_to :user
    has_many :steps
    has_many :favorite_templates
end
