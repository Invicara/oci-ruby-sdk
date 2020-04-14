# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A service offering from a supported provider. For more information,
  # see [FastConnect Overview](https://docs.cloud.oracle.com/Content/Network/Concepts/fastconnect.htm).
  #
  class Core::Models::FastConnectProviderService
    PRIVATE_PEERING_BGP_MANAGEMENT_ENUM = [
      PRIVATE_PEERING_BGP_MANAGEMENT_CUSTOMER_MANAGED = 'CUSTOMER_MANAGED'.freeze,
      PRIVATE_PEERING_BGP_MANAGEMENT_PROVIDER_MANAGED = 'PROVIDER_MANAGED'.freeze,
      PRIVATE_PEERING_BGP_MANAGEMENT_ORACLE_MANAGED = 'ORACLE_MANAGED'.freeze,
      PRIVATE_PEERING_BGP_MANAGEMENT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    PUBLIC_PEERING_BGP_MANAGEMENT_ENUM = [
      PUBLIC_PEERING_BGP_MANAGEMENT_CUSTOMER_MANAGED = 'CUSTOMER_MANAGED'.freeze,
      PUBLIC_PEERING_BGP_MANAGEMENT_PROVIDER_MANAGED = 'PROVIDER_MANAGED'.freeze,
      PUBLIC_PEERING_BGP_MANAGEMENT_ORACLE_MANAGED = 'ORACLE_MANAGED'.freeze,
      PUBLIC_PEERING_BGP_MANAGEMENT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    SUPPORTED_VIRTUAL_CIRCUIT_TYPES_ENUM = [
      SUPPORTED_VIRTUAL_CIRCUIT_TYPES_PUBLIC = 'PUBLIC'.freeze,
      SUPPORTED_VIRTUAL_CIRCUIT_TYPES_PRIVATE = 'PRIVATE'.freeze,
      SUPPORTED_VIRTUAL_CIRCUIT_TYPES_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    CUSTOMER_ASN_MANAGEMENT_ENUM = [
      CUSTOMER_ASN_MANAGEMENT_CUSTOMER_MANAGED = 'CUSTOMER_MANAGED'.freeze,
      CUSTOMER_ASN_MANAGEMENT_PROVIDER_MANAGED = 'PROVIDER_MANAGED'.freeze,
      CUSTOMER_ASN_MANAGEMENT_ORACLE_MANAGED = 'ORACLE_MANAGED'.freeze,
      CUSTOMER_ASN_MANAGEMENT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    PROVIDER_SERVICE_KEY_MANAGEMENT_ENUM = [
      PROVIDER_SERVICE_KEY_MANAGEMENT_CUSTOMER_MANAGED = 'CUSTOMER_MANAGED'.freeze,
      PROVIDER_SERVICE_KEY_MANAGEMENT_PROVIDER_MANAGED = 'PROVIDER_MANAGED'.freeze,
      PROVIDER_SERVICE_KEY_MANAGEMENT_ORACLE_MANAGED = 'ORACLE_MANAGED'.freeze,
      PROVIDER_SERVICE_KEY_MANAGEMENT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    BANDWITH_SHAPE_MANAGEMENT_ENUM = [
      BANDWITH_SHAPE_MANAGEMENT_CUSTOMER_MANAGED = 'CUSTOMER_MANAGED'.freeze,
      BANDWITH_SHAPE_MANAGEMENT_PROVIDER_MANAGED = 'PROVIDER_MANAGED'.freeze,
      BANDWITH_SHAPE_MANAGEMENT_ORACLE_MANAGED = 'ORACLE_MANAGED'.freeze,
      BANDWITH_SHAPE_MANAGEMENT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TYPE_ENUM = [
      TYPE_LAYER2 = 'LAYER2'.freeze,
      TYPE_LAYER3 = 'LAYER3'.freeze,
      TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The location of the provider's website or portal. This portal is where you can get information
    # about the provider service, create a virtual circuit connection from the provider to Oracle
    # Cloud Infrastructure, and retrieve your provider service key for that virtual circuit connection.
    #
    # Example: `https://example.com`
    #
    # @return [String]
    attr_accessor :description

    # **[Required]** The OCID of the service offered by the provider.
    #
    # @return [String]
    attr_accessor :id

    # **[Required]** Who is responsible for managing the private peering BGP information.
    #
    # @return [String]
    attr_reader :private_peering_bgp_management

    # **[Required]** The name of the provider.
    #
    # @return [String]
    attr_accessor :provider_name

    # **[Required]** The name of the service offered by the provider.
    #
    # @return [String]
    attr_accessor :provider_service_name

    # **[Required]** Who is responsible for managing the public peering BGP information.
    #
    # @return [String]
    attr_reader :public_peering_bgp_management

    # An array of virtual circuit types supported by this service.
    #
    # @return [Array<String>]
    attr_reader :supported_virtual_circuit_types

    # **[Required]** Who is responsible for managing the ASN information for the network at the other end
    # of the connection from Oracle.
    #
    # @return [String]
    attr_reader :customer_asn_management

    # **[Required]** Who is responsible for managing the provider service key.
    #
    # @return [String]
    attr_reader :provider_service_key_management

    # **[Required]** Who is responsible for managing the virtual circuit bandwidth.
    #
    # @return [String]
    attr_reader :bandwith_shape_management

    # **[Required]** Total number of cross-connect or cross-connect groups required for the virtual circuit.
    #
    # @return [Integer]
    attr_accessor :required_total_cross_connects

    # **[Required]** Provider service type.
    #
    # @return [String]
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'description': :'description',
        'id': :'id',
        'private_peering_bgp_management': :'privatePeeringBgpManagement',
        'provider_name': :'providerName',
        'provider_service_name': :'providerServiceName',
        'public_peering_bgp_management': :'publicPeeringBgpManagement',
        'supported_virtual_circuit_types': :'supportedVirtualCircuitTypes',
        'customer_asn_management': :'customerAsnManagement',
        'provider_service_key_management': :'providerServiceKeyManagement',
        'bandwith_shape_management': :'bandwithShapeManagement',
        'required_total_cross_connects': :'requiredTotalCrossConnects',
        'type': :'type'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'description': :'String',
        'id': :'String',
        'private_peering_bgp_management': :'String',
        'provider_name': :'String',
        'provider_service_name': :'String',
        'public_peering_bgp_management': :'String',
        'supported_virtual_circuit_types': :'Array<String>',
        'customer_asn_management': :'String',
        'provider_service_key_management': :'String',
        'bandwith_shape_management': :'String',
        'required_total_cross_connects': :'Integer',
        'type': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :private_peering_bgp_management The value to assign to the {#private_peering_bgp_management} property
    # @option attributes [String] :provider_name The value to assign to the {#provider_name} property
    # @option attributes [String] :provider_service_name The value to assign to the {#provider_service_name} property
    # @option attributes [String] :public_peering_bgp_management The value to assign to the {#public_peering_bgp_management} property
    # @option attributes [Array<String>] :supported_virtual_circuit_types The value to assign to the {#supported_virtual_circuit_types} property
    # @option attributes [String] :customer_asn_management The value to assign to the {#customer_asn_management} property
    # @option attributes [String] :provider_service_key_management The value to assign to the {#provider_service_key_management} property
    # @option attributes [String] :bandwith_shape_management The value to assign to the {#bandwith_shape_management} property
    # @option attributes [Integer] :required_total_cross_connects The value to assign to the {#required_total_cross_connects} property
    # @option attributes [String] :type The value to assign to the {#type} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.description = attributes[:'description'] if attributes[:'description']

      self.id = attributes[:'id'] if attributes[:'id']

      self.private_peering_bgp_management = attributes[:'privatePeeringBgpManagement'] if attributes[:'privatePeeringBgpManagement']

      raise 'You cannot provide both :privatePeeringBgpManagement and :private_peering_bgp_management' if attributes.key?(:'privatePeeringBgpManagement') && attributes.key?(:'private_peering_bgp_management')

      self.private_peering_bgp_management = attributes[:'private_peering_bgp_management'] if attributes[:'private_peering_bgp_management']

      self.provider_name = attributes[:'providerName'] if attributes[:'providerName']

      raise 'You cannot provide both :providerName and :provider_name' if attributes.key?(:'providerName') && attributes.key?(:'provider_name')

      self.provider_name = attributes[:'provider_name'] if attributes[:'provider_name']

      self.provider_service_name = attributes[:'providerServiceName'] if attributes[:'providerServiceName']

      raise 'You cannot provide both :providerServiceName and :provider_service_name' if attributes.key?(:'providerServiceName') && attributes.key?(:'provider_service_name')

      self.provider_service_name = attributes[:'provider_service_name'] if attributes[:'provider_service_name']

      self.public_peering_bgp_management = attributes[:'publicPeeringBgpManagement'] if attributes[:'publicPeeringBgpManagement']

      raise 'You cannot provide both :publicPeeringBgpManagement and :public_peering_bgp_management' if attributes.key?(:'publicPeeringBgpManagement') && attributes.key?(:'public_peering_bgp_management')

      self.public_peering_bgp_management = attributes[:'public_peering_bgp_management'] if attributes[:'public_peering_bgp_management']

      self.supported_virtual_circuit_types = attributes[:'supportedVirtualCircuitTypes'] if attributes[:'supportedVirtualCircuitTypes']

      raise 'You cannot provide both :supportedVirtualCircuitTypes and :supported_virtual_circuit_types' if attributes.key?(:'supportedVirtualCircuitTypes') && attributes.key?(:'supported_virtual_circuit_types')

      self.supported_virtual_circuit_types = attributes[:'supported_virtual_circuit_types'] if attributes[:'supported_virtual_circuit_types']

      self.customer_asn_management = attributes[:'customerAsnManagement'] if attributes[:'customerAsnManagement']

      raise 'You cannot provide both :customerAsnManagement and :customer_asn_management' if attributes.key?(:'customerAsnManagement') && attributes.key?(:'customer_asn_management')

      self.customer_asn_management = attributes[:'customer_asn_management'] if attributes[:'customer_asn_management']

      self.provider_service_key_management = attributes[:'providerServiceKeyManagement'] if attributes[:'providerServiceKeyManagement']

      raise 'You cannot provide both :providerServiceKeyManagement and :provider_service_key_management' if attributes.key?(:'providerServiceKeyManagement') && attributes.key?(:'provider_service_key_management')

      self.provider_service_key_management = attributes[:'provider_service_key_management'] if attributes[:'provider_service_key_management']

      self.bandwith_shape_management = attributes[:'bandwithShapeManagement'] if attributes[:'bandwithShapeManagement']

      raise 'You cannot provide both :bandwithShapeManagement and :bandwith_shape_management' if attributes.key?(:'bandwithShapeManagement') && attributes.key?(:'bandwith_shape_management')

      self.bandwith_shape_management = attributes[:'bandwith_shape_management'] if attributes[:'bandwith_shape_management']

      self.required_total_cross_connects = attributes[:'requiredTotalCrossConnects'] if attributes[:'requiredTotalCrossConnects']

      raise 'You cannot provide both :requiredTotalCrossConnects and :required_total_cross_connects' if attributes.key?(:'requiredTotalCrossConnects') && attributes.key?(:'required_total_cross_connects')

      self.required_total_cross_connects = attributes[:'required_total_cross_connects'] if attributes[:'required_total_cross_connects']

      self.type = attributes[:'type'] if attributes[:'type']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] private_peering_bgp_management Object to be assigned
    def private_peering_bgp_management=(private_peering_bgp_management)
      # rubocop:disable Style/ConditionalAssignment
      if private_peering_bgp_management && !PRIVATE_PEERING_BGP_MANAGEMENT_ENUM.include?(private_peering_bgp_management)
        OCI.logger.debug("Unknown value for 'private_peering_bgp_management' [" + private_peering_bgp_management + "]. Mapping to 'PRIVATE_PEERING_BGP_MANAGEMENT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @private_peering_bgp_management = PRIVATE_PEERING_BGP_MANAGEMENT_UNKNOWN_ENUM_VALUE
      else
        @private_peering_bgp_management = private_peering_bgp_management
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] public_peering_bgp_management Object to be assigned
    def public_peering_bgp_management=(public_peering_bgp_management)
      # rubocop:disable Style/ConditionalAssignment
      if public_peering_bgp_management && !PUBLIC_PEERING_BGP_MANAGEMENT_ENUM.include?(public_peering_bgp_management)
        OCI.logger.debug("Unknown value for 'public_peering_bgp_management' [" + public_peering_bgp_management + "]. Mapping to 'PUBLIC_PEERING_BGP_MANAGEMENT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @public_peering_bgp_management = PUBLIC_PEERING_BGP_MANAGEMENT_UNKNOWN_ENUM_VALUE
      else
        @public_peering_bgp_management = public_peering_bgp_management
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_virtual_circuit_types Object to be assigned
    def supported_virtual_circuit_types=(supported_virtual_circuit_types)
      # rubocop:disable Style/ConditionalAssignment
      if supported_virtual_circuit_types.nil?
        @supported_virtual_circuit_types = nil
      else
        @supported_virtual_circuit_types =
          supported_virtual_circuit_types.collect do |item|
            if SUPPORTED_VIRTUAL_CIRCUIT_TYPES_ENUM.include?(item)
              item
            else
              OCI.logger.debug("Unknown value for 'supported_virtual_circuit_types' [#{item}]. Mapping to 'SUPPORTED_VIRTUAL_CIRCUIT_TYPES_UNKNOWN_ENUM_VALUE'") if OCI.logger
              SUPPORTED_VIRTUAL_CIRCUIT_TYPES_UNKNOWN_ENUM_VALUE
            end
          end
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_asn_management Object to be assigned
    def customer_asn_management=(customer_asn_management)
      # rubocop:disable Style/ConditionalAssignment
      if customer_asn_management && !CUSTOMER_ASN_MANAGEMENT_ENUM.include?(customer_asn_management)
        OCI.logger.debug("Unknown value for 'customer_asn_management' [" + customer_asn_management + "]. Mapping to 'CUSTOMER_ASN_MANAGEMENT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @customer_asn_management = CUSTOMER_ASN_MANAGEMENT_UNKNOWN_ENUM_VALUE
      else
        @customer_asn_management = customer_asn_management
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] provider_service_key_management Object to be assigned
    def provider_service_key_management=(provider_service_key_management)
      # rubocop:disable Style/ConditionalAssignment
      if provider_service_key_management && !PROVIDER_SERVICE_KEY_MANAGEMENT_ENUM.include?(provider_service_key_management)
        OCI.logger.debug("Unknown value for 'provider_service_key_management' [" + provider_service_key_management + "]. Mapping to 'PROVIDER_SERVICE_KEY_MANAGEMENT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @provider_service_key_management = PROVIDER_SERVICE_KEY_MANAGEMENT_UNKNOWN_ENUM_VALUE
      else
        @provider_service_key_management = provider_service_key_management
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bandwith_shape_management Object to be assigned
    def bandwith_shape_management=(bandwith_shape_management)
      # rubocop:disable Style/ConditionalAssignment
      if bandwith_shape_management && !BANDWITH_SHAPE_MANAGEMENT_ENUM.include?(bandwith_shape_management)
        OCI.logger.debug("Unknown value for 'bandwith_shape_management' [" + bandwith_shape_management + "]. Mapping to 'BANDWITH_SHAPE_MANAGEMENT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @bandwith_shape_management = BANDWITH_SHAPE_MANAGEMENT_UNKNOWN_ENUM_VALUE
      else
        @bandwith_shape_management = bandwith_shape_management
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      # rubocop:disable Style/ConditionalAssignment
      if type && !TYPE_ENUM.include?(type)
        OCI.logger.debug("Unknown value for 'type' [" + type + "]. Mapping to 'TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @type = TYPE_UNKNOWN_ENUM_VALUE
      else
        @type = type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        description == other.description &&
        id == other.id &&
        private_peering_bgp_management == other.private_peering_bgp_management &&
        provider_name == other.provider_name &&
        provider_service_name == other.provider_service_name &&
        public_peering_bgp_management == other.public_peering_bgp_management &&
        supported_virtual_circuit_types == other.supported_virtual_circuit_types &&
        customer_asn_management == other.customer_asn_management &&
        provider_service_key_management == other.provider_service_key_management &&
        bandwith_shape_management == other.bandwith_shape_management &&
        required_total_cross_connects == other.required_total_cross_connects &&
        type == other.type
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
      [description, id, private_peering_bgp_management, provider_name, provider_service_name, public_peering_bgp_management, supported_virtual_circuit_types, customer_asn_management, provider_service_key_management, bandwith_shape_management, required_total_cross_connects, type].hash
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
