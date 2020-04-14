# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # CreateDatabaseFromBackupDetails model.
  class Database::Models::CreateDatabaseFromBackupDetails
    # **[Required]** The backup [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm).
    # @return [String]
    attr_accessor :backup_id

    # **[Required]** The password to open the TDE wallet.
    # @return [String]
    attr_accessor :backup_tde_password

    # **[Required]** A strong password for SYS, SYSTEM, PDB Admin and TDE Wallet. The password must be at least nine characters and contain at least two uppercase, two lowercase, two numbers, and two special characters. The special characters must be _, \\#, or -.
    # @return [String]
    attr_accessor :admin_password

    # The `DB_UNIQUE_NAME` of the Oracle Database being backed up.
    # @return [String]
    attr_accessor :db_unique_name

    # The display name of the database to be created from the backup. It must begin with an alphabetic character and can contain a maximum of eight alphanumeric characters. Special characters are not permitted.
    # @return [String]
    attr_accessor :db_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'backup_id': :'backupId',
        'backup_tde_password': :'backupTDEPassword',
        'admin_password': :'adminPassword',
        'db_unique_name': :'dbUniqueName',
        'db_name': :'dbName'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'backup_id': :'String',
        'backup_tde_password': :'String',
        'admin_password': :'String',
        'db_unique_name': :'String',
        'db_name': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :backup_id The value to assign to the {#backup_id} property
    # @option attributes [String] :backup_tde_password The value to assign to the {#backup_tde_password} property
    # @option attributes [String] :admin_password The value to assign to the {#admin_password} property
    # @option attributes [String] :db_unique_name The value to assign to the {#db_unique_name} property
    # @option attributes [String] :db_name The value to assign to the {#db_name} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.backup_id = attributes[:'backupId'] if attributes[:'backupId']

      raise 'You cannot provide both :backupId and :backup_id' if attributes.key?(:'backupId') && attributes.key?(:'backup_id')

      self.backup_id = attributes[:'backup_id'] if attributes[:'backup_id']

      self.backup_tde_password = attributes[:'backupTDEPassword'] if attributes[:'backupTDEPassword']

      raise 'You cannot provide both :backupTDEPassword and :backup_tde_password' if attributes.key?(:'backupTDEPassword') && attributes.key?(:'backup_tde_password')

      self.backup_tde_password = attributes[:'backup_tde_password'] if attributes[:'backup_tde_password']

      self.admin_password = attributes[:'adminPassword'] if attributes[:'adminPassword']

      raise 'You cannot provide both :adminPassword and :admin_password' if attributes.key?(:'adminPassword') && attributes.key?(:'admin_password')

      self.admin_password = attributes[:'admin_password'] if attributes[:'admin_password']

      self.db_unique_name = attributes[:'dbUniqueName'] if attributes[:'dbUniqueName']

      raise 'You cannot provide both :dbUniqueName and :db_unique_name' if attributes.key?(:'dbUniqueName') && attributes.key?(:'db_unique_name')

      self.db_unique_name = attributes[:'db_unique_name'] if attributes[:'db_unique_name']

      self.db_name = attributes[:'dbName'] if attributes[:'dbName']

      raise 'You cannot provide both :dbName and :db_name' if attributes.key?(:'dbName') && attributes.key?(:'db_name')

      self.db_name = attributes[:'db_name'] if attributes[:'db_name']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        backup_id == other.backup_id &&
        backup_tde_password == other.backup_tde_password &&
        admin_password == other.admin_password &&
        db_unique_name == other.db_unique_name &&
        db_name == other.db_name
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
      [backup_id, backup_tde_password, admin_password, db_unique_name, db_name].hash
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
