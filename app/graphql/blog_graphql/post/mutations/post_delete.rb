# frozen_string_literal: true

module Post
  module Mutations
    class PostDelete < BaseCommon::Mutations::BaseMutation
      field :success, Boolean, null: true

      argument :id, ID, required: true

      def resolve(id:)

        the_post =  BlogPost.find_by(id: id) 

        raise GraphQL::ExecutionError, the_post.errors.full_messages.join(', ') unless the_post.destroy

        { success: true }
      end
    end
  end
end
