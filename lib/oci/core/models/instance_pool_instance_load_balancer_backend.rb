# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Represents the load balancer Backend that is configured for an instance pool instance.
  class Core::Models::InstancePoolInstanceLoadBalancerBackend
    BACKEND_HEALTH_STATUS_ENUM = [
      BACKEND_HEALTH_STATUS_OK = 'OK'.freeze,
      BACKEND_HEALTH_STATUS_WARNING = 'WARNING'.freeze,
      BACKEND_HEALTH_STATUS_CRITICAL = 'CRITICAL'.freeze,
      BACKEND_HEALTH_STATUS_UNKNOWN = 'UNKNOWN'.freeze,
      BACKEND_HEALTH_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the load balancer attached to the instance pool.
    # @return [String]
    attr_accessor :load_balancer_id

    # **[Required]** The name of the backend set on the load balancer.
    # @return [String]
    attr_accessor :backend_set_name

    # **[Required]** The name of the backend in the backend set.
    # @return [String]
    attr_accessor :backend_name

    # **[Required]** The health of the backend as observed by the load balancer.
    # @return [String]
    attr_reader :backend_health_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'load_balancer_id': :'loadBalancerId',
        'backend_set_name': :'backendSetName',
        'backend_name': :'backendName',
        'backend_health_status': :'backendHealthStatus'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'load_balancer_id': :'String',
        'backend_set_name': :'String',
        'backend_name': :'String',
        'backend_health_status': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :load_balancer_id The value to assign to the {#load_balancer_id} property
    # @option attributes [String] :backend_set_name The value to assign to the {#backend_set_name} property
    # @option attributes [String] :backend_name The value to assign to the {#backend_name} property
    # @option attributes [String] :backend_health_status The value to assign to the {#backend_health_status} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.load_balancer_id = attributes[:'loadBalancerId'] if attributes[:'loadBalancerId']

      raise 'You cannot provide both :loadBalancerId and :load_balancer_id' if attributes.key?(:'loadBalancerId') && attributes.key?(:'load_balancer_id')

      self.load_balancer_id = attributes[:'load_balancer_id'] if attributes[:'load_balancer_id']

      self.backend_set_name = attributes[:'backendSetName'] if attributes[:'backendSetName']

      raise 'You cannot provide both :backendSetName and :backend_set_name' if attributes.key?(:'backendSetName') && attributes.key?(:'backend_set_name')

      self.backend_set_name = attributes[:'backend_set_name'] if attributes[:'backend_set_name']

      self.backend_name = attributes[:'backendName'] if attributes[:'backendName']

      raise 'You cannot provide both :backendName and :backend_name' if attributes.key?(:'backendName') && attributes.key?(:'backend_name')

      self.backend_name = attributes[:'backend_name'] if attributes[:'backend_name']

      self.backend_health_status = attributes[:'backendHealthStatus'] if attributes[:'backendHealthStatus']

      raise 'You cannot provide both :backendHealthStatus and :backend_health_status' if attributes.key?(:'backendHealthStatus') && attributes.key?(:'backend_health_status')

      self.backend_health_status = attributes[:'backend_health_status'] if attributes[:'backend_health_status']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] backend_health_status Object to be assigned
    def backend_health_status=(backend_health_status)
      # rubocop:disable Style/ConditionalAssignment
      if backend_health_status && !BACKEND_HEALTH_STATUS_ENUM.include?(backend_health_status)
        OCI.logger.debug("Unknown value for 'backend_health_status' [" + backend_health_status + "]. Mapping to 'BACKEND_HEALTH_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @backend_health_status = BACKEND_HEALTH_STATUS_UNKNOWN_ENUM_VALUE
      else
        @backend_health_status = backend_health_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        load_balancer_id == other.load_balancer_id &&
        backend_set_name == other.backend_set_name &&
        backend_name == other.backend_name &&
        backend_health_status == other.backend_health_status
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [load_balancer_id, backend_set_name, backend_name, backend_health_status].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
