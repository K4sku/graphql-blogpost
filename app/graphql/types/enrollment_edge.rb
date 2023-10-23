module Types
    class EnrollmentEdge < BaseEdge
        node_type(Types::CourseType)

        field :enrollment_date, String, null: true

        def enrollment_date
            object.parent.enrollments.find_by(course: node)&.enrollment_date
        end
    end
end
