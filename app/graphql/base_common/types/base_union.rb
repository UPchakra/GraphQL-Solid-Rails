# frozen_string_literal: true
module BaseCommon
  module Types
    class BaseUnion < GraphQL::Schema::Union
      edge_type_class(Types::BaseEdge)
      connection_type_class(Types::BaseConnection)
    end
  end
end