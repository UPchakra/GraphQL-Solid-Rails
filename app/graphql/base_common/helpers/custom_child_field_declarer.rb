# frozen_string_literal: true

module BaseCommon
  module Helpers
    module CustomChildFieldDeclarer
      extend ActiveSupport::Concern

      DEFAULT_CACHE_OPTIONS = { cache_key: :value }.freeze

      class_methods do
        def declare_class_field(child_class, field_name, field_type, options = {}, &)
          child_class.field(field_name, field_type, **options, &)
        end

        def declare_cacheable_field(child_class, field_name, field_type, options = {}, &)
          options[:cache_fragment] = merge_cache_options(options)
          declare_class_field(child_class, field_name, field_type, **options, &)
        end

        def merge_cache_options(options)
          options[:cache_fragment].is_a?(Hash) ? DEFAULT_CACHE_OPTIONS.merge(options[:cache_fragment]) : DEFAULT_CACHE_OPTIONS
        end
      end
    end
  end
end
