# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Describes the required parameters for the creation of an Autonomous Container Database.
  #
  class Database::Models::CreateAutonomousContainerDatabaseDetails
    SERVICE_LEVEL_AGREEMENT_TYPE_ENUM = [
      SERVICE_LEVEL_AGREEMENT_TYPE_STANDARD = 'STANDARD'.freeze
    ].freeze

    PATCH_MODEL_ENUM = [
      PATCH_MODEL_RELEASE_UPDATES = 'RELEASE_UPDATES'.freeze,
      PATCH_MODEL_RELEASE_UPDATE_REVISIONS = 'RELEASE_UPDATE_REVISIONS'.freeze
    ].freeze

    # **[Required]** The display name for the Autonomous Container Database.
    # @return [String]
    attr_accessor :display_name

    # The service level agreement type of the Autonomous Container Database. The default is STANDARD. For a mission critical Autonomous Container Database, the specified Autonomous Exadata Infrastructure must be associated with a remote Autonomous Exadata Infrastructure.
    # @return [String]
    attr_reader :service_level_agreement_type

    # **[Required]** The OCID of the Autonomous Exadata Infrastructure.
    # @return [String]
    attr_accessor :autonomous_exadata_infrastructure_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment containing the Autonomous Container Database.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** Database Patch model preference.
    # @return [String]
    attr_reader :patch_model

    # @return [OCI::Database::Models::MaintenanceWindow]
    attr_accessor :maintenance_window_details

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # @return [OCI::Database::Models::AutonomousContainerDatabaseBackupConfig]
    attr_accessor :backup_config

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'service_level_agreement_type': :'serviceLevelAgreementType',
        'autonomous_exadata_infrastructure_id': :'autonomousExadataInfrastructureId',
        'compartment_id': :'compartmentId',
        'patch_model': :'patchModel',
        'maintenance_window_details': :'maintenanceWindowDetails',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'backup_config': :'backupConfig'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'service_level_agreement_type': :'String',
        'autonomous_exadata_infrastructure_id': :'String',
        'compartment_id': :'String',
        'patch_model': :'String',
        'maintenance_window_details': :'OCI::Database::Models::MaintenanceWindow',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'backup_config': :'OCI::Database::Models::AutonomousContainerDatabaseBackupConfig'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :service_level_agreement_type The value to assign to the {#service_level_agreement_type} property
    # @option attributes [String] :autonomous_exadata_infrastructure_id The value to assign to the {#autonomous_exadata_infrastructure_id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :patch_model The value to assign to the {#patch_model} property
    # @option attributes [OCI::Database::Models::MaintenanceWindow] :maintenance_window_details The value to assign to the {#maintenance_window_details} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [OCI::Database::Models::AutonomousContainerDatabaseBackupConfig] :backup_config The value to assign to the {#backup_config} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.service_level_agreement_type = attributes[:'serviceLevelAgreementType'] if attributes[:'serviceLevelAgreementType']

      raise 'You cannot provide both :serviceLevelAgreementType and :service_level_agreement_type' if attributes.key?(:'serviceLevelAgreementType') && attributes.key?(:'service_level_agreement_type')

      self.service_level_agreement_type = attributes[:'service_level_agreement_type'] if attributes[:'service_level_agreement_type']

      self.autonomous_exadata_infrastructure_id = attributes[:'autonomousExadataInfrastructureId'] if attributes[:'autonomousExadataInfrastructureId']

      raise 'You cannot provide both :autonomousExadataInfrastructureId and :autonomous_exadata_infrastructure_id' if attributes.key?(:'autonomousExadataInfrastructureId') && attributes.key?(:'autonomous_exadata_infrastructure_id')

      self.autonomous_exadata_infrastructure_id = attributes[:'autonomous_exadata_infrastructure_id'] if attributes[:'autonomous_exadata_infrastructure_id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.patch_model = attributes[:'patchModel'] if attributes[:'patchModel']

      raise 'You cannot provide both :patchModel and :patch_model' if attributes.key?(:'patchModel') && attributes.key?(:'patch_model')

      self.patch_model = attributes[:'patch_model'] if attributes[:'patch_model']

      self.maintenance_window_details = attributes[:'maintenanceWindowDetails'] if attributes[:'maintenanceWindowDetails']

      raise 'You cannot provide both :maintenanceWindowDetails and :maintenance_window_details' if attributes.key?(:'maintenanceWindowDetails') && attributes.key?(:'maintenance_window_details')

      self.maintenance_window_details = attributes[:'maintenance_window_details'] if attributes[:'maintenance_window_details']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.backup_config = attributes[:'backupConfig'] if attributes[:'backupConfig']

      raise 'You cannot provide both :backupConfig and :backup_config' if attributes.key?(:'backupConfig') && attributes.key?(:'backup_config')

      self.backup_config = attributes[:'backup_config'] if attributes[:'backup_config']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_level_agreement_type Object to be assigned
    def service_level_agreement_type=(service_level_agreement_type)
      raise "Invalid value for 'service_level_agreement_type': this must be one of the values in SERVICE_LEVEL_AGREEMENT_TYPE_ENUM." if service_level_agreement_type && !SERVICE_LEVEL_AGREEMENT_TYPE_ENUM.include?(service_level_agreement_type)

      @service_level_agreement_type = service_level_agreement_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] patch_model Object to be assigned
    def patch_model=(patch_model)
      raise "Invalid value for 'patch_model': this must be one of the values in PATCH_MODEL_ENUM." if patch_model && !PATCH_MODEL_ENUM.include?(patch_model)

      @patch_model = patch_model
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        service_level_agreement_type == other.service_level_agreement_type &&
        autonomous_exadata_infrastructure_id == other.autonomous_exadata_infrastructure_id &&
        compartment_id == other.compartment_id &&
        patch_model == other.patch_model &&
        maintenance_window_details == other.maintenance_window_details &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        backup_config == other.backup_config
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
      [display_name, service_level_agreement_type, autonomous_exadata_infrastructure_id, compartment_id, patch_model, maintenance_window_details, freeform_tags, defined_tags, backup_config].hash
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