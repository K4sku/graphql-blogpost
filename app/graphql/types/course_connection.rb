module Types
    class CourseConnection < BaseConnection
        edge_type(Types::EnrollmentEdge)
    end
end
