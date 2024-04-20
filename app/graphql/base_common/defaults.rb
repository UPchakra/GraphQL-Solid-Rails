# frozen_string_literal: true
module BaseCommon
  module Defaults
    extend ActiveSupport::Concern
    include BaseCommon::Helpers::CustomChildFieldDeclarer
  end
end
