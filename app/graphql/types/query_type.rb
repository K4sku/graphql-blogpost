# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :student, StudentType, null: true do
      argument :id, ID, required: true
    end

    field :students, [StudentType]
    field :courses, [CourseType]

    def student(id:)
      ::Student.find(id)
    end

    def students
      Student.all
    end

    def courses
      Course.all
    end
  end
end
