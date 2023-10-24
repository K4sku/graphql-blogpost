# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :students, [Types::StudentType]
    field :courses, [Types::CourseType]

    def students
      Student.includes(:courses).all
    end

    def courses
      Course.all
    end
  end
end
