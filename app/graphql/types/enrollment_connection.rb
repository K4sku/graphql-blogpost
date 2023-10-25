module Types
    class EnrollmentConnection < BaseConnection
        edge_type(EnrollmentEdge)

        def nodes
            # .edge_nodes here is required for 'nodes' shorthand to work
            object.edge_nodes.map(&:course)
        end
    end
end
