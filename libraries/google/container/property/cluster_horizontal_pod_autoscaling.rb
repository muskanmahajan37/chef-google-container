# Copyright 2017 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

module Google
  module Container
    module Data
      # A class to manage data for horizontal_pod_autoscaling for cluster.
      class ClustHorizPodAutos
        include Comparable

        attr_reader :disabled

        def to_json(_arg = nil)
          {
            'disabled' => disabled
          }.reject { |_k, v| v.nil? }.to_json
        end

        def to_s
          {
            disabled: disabled.to_s
          }.map { |k, v| "#{k}: #{v}" }.join(', ')
        end

        def ==(other)
          return false unless other.is_a? ClustHorizPodAutos
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            return false if compare[:self] != compare[:other]
          end
          true
        end

        def <=>(other)
          return false unless other.is_a? ClustHorizPodAutos
          compare_fields(other).each do |compare|
            next if compare[:self].nil? || compare[:other].nil?
            result = compare[:self] <=> compare[:other]
            return result unless result.zero?
          end
          0
        end

        def inspect
          to_json
        end

        private

        def compare_fields(other)
          [
            { self: disabled, other: other.disabled }
          ]
        end
      end

      # Manages a ClustHorizPodAutos nested object
      # Data is coming from the GCP API
      class ClustHorizPodAutosApi < ClustHorizPodAutos
        def initialize(args)
          @disabled =
            Google::Container::Property::Boolean.api_parse(args['disabled'])
        end
      end

      # Manages a ClustHorizPodAutos nested object
      # Data is coming from the Chef catalog
      class ClustHorizPodAutosCatalog < ClustHorizPodAutos
        def initialize(args)
          @disabled =
            Google::Container::Property::Boolean.catalog_parse(args[:disabled])
        end
      end
    end

    module Property
      # A class to manage input to horizontal_pod_autoscaling for cluster.
      class ClustHorizPodAutos
        def self.coerce
          lambda do |x|
            ::Google::Container::Property::ClustHorizPodAutos.catalog_parse(x)
          end
        end

        # Used for parsing Chef catalog
        def self.catalog_parse(value)
          return if value.nil?
          return value if value.is_a? Data::ClustHorizPodAutos
          Data::ClustHorizPodAutosCatalog.new(value)
        end

        # Used for parsing GCP API responses
        def self.api_parse(value)
          return if value.nil?
          return value if value.is_a? Data::ClustHorizPodAutos
          Data::ClustHorizPodAutosApi.new(value)
        end
      end
    end
  end
end
