# frozen_string_literal: true
module BaseCommon
  module Types
    class BaseField < GraphQL::Schema::Field
      argument_class Types::BaseArgument
    end
  end
end
