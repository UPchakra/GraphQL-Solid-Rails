# frozen_string_literal: true

module Post
  module Params
    class PostParams < BaseCommon::Params::BaseParamObject
      argument :title, String, required: true
      argument :content, String, required: false
      argument :author, String, required: true
    end
  end
end
