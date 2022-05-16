class Project < ApplicationRecord
    validates :title, presence: true, length: {minimum: 10, maximum: 100}
    validates :description, presence: true, length: {minimum: 10, maximum: 120}
    validates :body, presence: true, length: {minimum: 50}
end