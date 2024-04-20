# frozen_string_literal: true

module BaseCommon
    module Params
      class BaseParamObject < GraphQL::Schema::InputObject
        argument_class BaseCommon::Params::BaseParam
      end
    end
  end
  