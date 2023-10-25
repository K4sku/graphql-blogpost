# frozen_string_literal: true

module Types
    class StudentType < BaseObject
        field :id, ID, null: false
        field :name, String
        field :courses, EnrollmentConnection
    end
end
