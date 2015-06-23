module Extensions
  module Elasticsearch
    module Model
      module Response
        module Hashable
          #
          # Returns the result object as a plain ruby hash to support awesome_print benefits
          # it allows invoking the Elasticsearch::Model::Response::Result#method(:to_hash) method
          #
          #
          # @return [Hash]
          #
          def to_hash
            @result.to_h
          end
        end
      end
    end
  end
end

