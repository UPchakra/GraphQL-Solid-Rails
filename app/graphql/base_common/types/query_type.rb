# frozen_string_literal: true
module BaseCommon
  module Types
    class QueryType < Types::BaseObject
      # default Nodes
      include GraphQL::Types::Relay::HasNodeField
      include GraphQL::Types::Relay::HasNodesField

      # post
      include Post::Queries::PostQueries
    end
  end
end