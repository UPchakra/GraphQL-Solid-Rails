# frozen_string_literal: true
module BaseCommon
  module Types
    class MutationType < Types::BaseObject
      #blog Post
      field :post_create, mutation: Post::Mutations::PostCreate
      field :post_delete, mutation: Post::Mutations::PostDelete
      field :post_update, mutation: Post::Mutations::PostUpdate
    end
  end
end
