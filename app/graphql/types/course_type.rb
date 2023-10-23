# frozen_string_literal: true

module Types
    class CourseType < BaseObject
        field :id, ID, null: false
        field :title, String
    end
end
