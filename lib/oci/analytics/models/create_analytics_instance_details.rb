# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Input payload to create an Anaytics instance.
  #
  class Analytics::Models::CreateAnalyticsInstanceDetails
    FEATURE_SET_ENUM = [
      FEATURE_SET_SELF_SERVICE_ANALYTICS = 'SELF_SERVICE_ANALYTICS'.freeze,
      FEATURE_SET_ENTERPRISE_ANALYTICS = 'ENTERPRISE_ANALYTICS'.freeze
    ].freeze

    LICENSE_TYPE_ENUM = [
      LICENSE_TYPE_LICENSE_INCLUDED = 'LICENSE_INCLUDED'.freeze,
      LICENSE_TYPE_BRING_YOUR_OWN_LICENSE = 'BRING_YOUR_OWN_LICENSE'.freeze
    ].freeze

    # **[Required]** The name of the Analytics instance. This name must be unique in the tenancy and cannot be changed.
    #
    # @return [String]
    attr_accessor :name

    # Optional description.
    #
    # @return [String]
    attr_accessor :description

    # **[Required]** The OCID of the compartment.
    #
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** Analytics feature set.
    #
    # @return [String]
    attr_reader :feature_set

    # This attribute is required.
    # @return [OCI::Analytics::Models::Capacity]
    attr_accessor :capacity

    # **[Required]** The license used for the service.
    #
    # @return [String]
    attr_reader :license_type

    # Email address receiving notifications.
    #
    # @return [String]
    attr_accessor :email_notification

    # IDCS access token identifying a stripe and service administrator user.
    #
    # @return [String]
    attr_accessor :idcs_access_token

    # Defined tags for this resource. Each key is predefined and scoped to a
    # namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Free-form tags for this resource. Each tag is a simple key-value pair with no
    # predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'name': :'name',
        'description': :'description',
        'compartment_id': :'compartmentId',
        'feature_set': :'featureSet',
        'capacity': :'capacity',
        'license_type': :'licenseType',
        'email_notification': :'emailNotification',
        'idcs_access_token': :'idcsAccessToken',
        'defined_tags': :'definedTags',
        'freeform_tags': :'freeformTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'name': :'String',
        'description': :'String',
        'compartment_id': :'String',
        'feature_set': :'String',
        'capacity': :'OCI::Analytics::Models::Capacity',
        'license_type': :'String',
        'email_notification': :'String',
        'idcs_access_token': :'String',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'freeform_tags': :'Hash<String, String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :feature_set The value to assign to the {#feature_set} property
    # @option attributes [OCI::Analytics::Models::Capacity] :capacity The value to assign to the {#capacity} property
    # @option attributes [String] :license_type The value to assign to the {#license_type} property
    # @option attributes [String] :email_notification The value to assign to the {#email_notification} property
    # @option attributes [String] :idcs_access_token The value to assign to the {#idcs_access_token} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.feature_set = attributes[:'featureSet'] if attributes[:'featureSet']

      raise 'You cannot provide both :featureSet and :feature_set' if attributes.key?(:'featureSet') && attributes.key?(:'feature_set')

      self.feature_set = attributes[:'feature_set'] if attributes[:'feature_set']

      self.capacity = attributes[:'capacity'] if attributes[:'capacity']

      self.license_type = attributes[:'licenseType'] if attributes[:'licenseType']

      raise 'You cannot provide both :licenseType and :license_type' if attributes.key?(:'licenseType') && attributes.key?(:'license_type')

      self.license_type = attributes[:'license_type'] if attributes[:'license_type']

      self.email_notification = attributes[:'emailNotification'] if attributes[:'emailNotification']

      raise 'You cannot provide both :emailNotification and :email_notification' if attributes.key?(:'emailNotification') && attributes.key?(:'email_notification')

      self.email_notification = attributes[:'email_notification'] if attributes[:'email_notification']

      self.idcs_access_token = attributes[:'idcsAccessToken'] if attributes[:'idcsAccessToken']

      raise 'You cannot provide both :idcsAccessToken and :idcs_access_token' if attributes.key?(:'idcsAccessToken') && attributes.key?(:'idcs_access_token')

      self.idcs_access_token = attributes[:'idcs_access_token'] if attributes[:'idcs_access_token']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] feature_set Object to be assigned
    def feature_set=(feature_set)
      raise "Invalid value for 'feature_set': this must be one of the values in FEATURE_SET_ENUM." if feature_set && !FEATURE_SET_ENUM.include?(feature_set)

      @feature_set = feature_set
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] license_type Object to be assigned
    def license_type=(license_type)
      raise "Invalid value for 'license_type': this must be one of the values in LICENSE_TYPE_ENUM." if license_type && !LICENSE_TYPE_ENUM.include?(license_type)

      @license_type = license_type
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        name == other.name &&
        description == other.description &&
        compartment_id == other.compartment_id &&
        feature_set == other.feature_set &&
        capacity == other.capacity &&
        license_type == other.license_type &&
        email_notification == other.email_notification &&
        idcs_access_token == other.idcs_access_token &&
        defined_tags == other.defined_tags &&
        freeform_tags == other.freeform_tags
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
      [name, description, compartment_id, feature_set, capacity, license_type, email_notification, idcs_access_token, defined_tags, freeform_tags].hash
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