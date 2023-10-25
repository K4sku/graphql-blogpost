module Types
    class EnrollmentConnection < BaseConnection
        edge_type(EnrollmentEdge)

        # this method is required for 'nodes' shorthand to work
        def nodes
            object.edge_nodes.map(&:course)
        end
    end
end
