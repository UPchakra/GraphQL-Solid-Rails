# frozen_string_literal: true
module BaseCommon
  module Types
    module BaseInterface
      include GraphQL::Schema::Interface
      edge_type_class(BaseCommon::Types::BaseEdge)
      connection_type_class(BaseCommon::Types::BaseConnection)

      field_class BaseCommon::Types::BaseField
    end
  end
end
