# frozen_string_literal: true

module Post
  module Queries
    module PostQueries

      def self.included(base)
        base.field :posts, [Post::Types::PostType], null: true, description: "Get all posts"
        base.field :post, Post::Types::PostType, null: true, description: "Get a single post" do
          argument :id, GraphQL::Types::ID, required: true # Fix here

        end
      end

      def posts
        BlogPost.all
      end

      def post(id:)

        if id.nil?
          raise GraphQL::ExecutionError, "ID cannot be nil"
        end
        BlogPost.find_by(id: id) || raise(GraphQL::ExecutionError, 'Post not found')
      end
    end
  end
end
