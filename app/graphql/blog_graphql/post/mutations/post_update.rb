# frozen_string_literal: true

module Post
  module Mutations
    class PostUpdate < BaseCommon::Mutations::BaseMutation
      field :post, Post::Types::PostType, null: false

      argument :id, ID, required: true
      argument :post, Post::Params::PostParams, required: true
 
      def resolve(id:, post:)
        the_post =  BlogPost.find_by(id: id) 

        if the_post.update(post.to_h)
          { post: the_post }
        else
          raise GraphQL::ExecutionError, the_post.errors.full_messages.join(', ')
        end
      end
    end
  end
end
