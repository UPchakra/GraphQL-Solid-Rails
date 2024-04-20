# frozen_string_literal: true

module Post
  module Mutations
    class PostCreate < BaseCommon::Mutations::BaseMutation
      field :post, Post::Types::PostType, null: true

      argument :post, Post::Params::PostParams, required: true

      def resolve(post:, **args)

        the_post = BlogPost.new(post.to_h)

        if the_post.save
          { post: the_post }
        else
          raise GraphQL::ExecutionError, the_post.errors.full_messages.join(', ')
        end
      end
    end
  end
end
