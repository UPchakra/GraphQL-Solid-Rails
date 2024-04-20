# frozen_string_literal: true

module BaseCommon
    module Params
      class BaseParam < GraphQL::Schema::Argument
        def initialize(*args, camelize: false, **kwargs, &block)
          # Then, call super _without_ any args, where Ruby will take
          # _all_ the args originally passed to this method and pass it to the super method.
          super
        end
      end
    end
  end
  