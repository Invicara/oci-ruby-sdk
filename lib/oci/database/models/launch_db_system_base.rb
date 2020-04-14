# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Parameters for provisioning a bare metal, virtual machine, or Exadata DB system.
  #
  # **Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using the API.
  #
  # This class has direct subclasses. If you are using this class as input to a service operations then you should favor using a subclass over the base class
  class Database::Models::LaunchDbSystemBase
    SOURCE_ENUM = [
      SOURCE_NONE = 'NONE'.freeze,
      SOURCE_DB_BACKUP = 'DB_BACKUP'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment the DB system  belongs in.
    # @return [String]
    attr_accessor :compartment_id

    # A Fault Domain is a grouping of hardware and infrastructure within an availability domain.
    # Fault Domains let you distribute your instances so that they are not on the same physical
    # hardware within a single availability domain. A hardware failure or maintenance
    # that affects one Fault Domain does not affect DB systems in other Fault Domains.
    #
    # If you do not specify the Fault Domain, the system selects one for you. To change the Fault
    # Domain for a DB system, terminate it and launch a new DB system in the preferred Fault Domain.
    #
    # If the node count is greater than 1, you can specify which Fault Domains these nodes will be distributed into.
    # The system assigns your nodes automatically to the Fault Domains you specify so that
    # no Fault Domain contains more than one node.
    #
    # To get a list of Fault Domains, use the
    # {#list_fault_domains list_fault_domains} operation in the
    # Identity and Access Management Service API.
    #
    # Example: `FAULT-DOMAIN-1`
    #
    # @return [Array<String>]
    attr_accessor :fault_domains

    # The user-friendly name for the DB system. The name does not have to be unique.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The availability domain where the DB system is located.
    # @return [String]
    attr_accessor :availability_domain

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the subnet the DB system is associated with.
    #
    # **Subnet Restrictions:**
    # - For bare metal DB systems and for single node virtual machine DB systems, do not use a subnet that overlaps with 192.168.16.16/28.
    # - For Exadata and virtual machine 2-node RAC DB systems, do not use a subnet that overlaps with 192.168.128.0/20.
    #
    # These subnets are used by the Oracle Clusterware private interconnect on the database instance.
    # Specifying an overlapping subnet will cause the private interconnect to malfunction.
    # This restriction applies to both the client subnet and the backup subnet.
    #
    # @return [String]
    attr_accessor :subnet_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the backup network subnet the DB system is associated with. Applicable only to Exadata DB systems.
    #
    # **Subnet Restrictions:** See the subnet restrictions information for **subnetId**.
    #
    # @return [String]
    attr_accessor :backup_subnet_id

    # A list of the [OCIDs](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the network security groups (NSGs) that this resource belongs to. Setting this to an empty array after the list is created removes the resource from all NSGs. For more information about NSGs, see [Security Rules](https://docs.cloud.oracle.com/Content/Network/Concepts/securityrules.htm).
    # **NsgIds restrictions:**
    # - Autonomous Databases with private access require at least 1 Network Security Group (NSG). The nsgIds array cannot be empty.
    #
    # @return [Array<String>]
    attr_accessor :nsg_ids

    # A list of the [OCIDs](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the network security groups (NSGs) that the backup network of this DB system belongs to. Setting this to an empty array after the list is created removes the resource from all NSGs. For more information about NSGs, see [Security Rules](https://docs.cloud.oracle.com/Content/Network/Concepts/securityrules.htm). Applicable only to Exadata DB systems.
    #
    # @return [Array<String>]
    attr_accessor :backup_network_nsg_ids

    # **[Required]** The shape of the DB system. The shape determines resources allocated to the DB system.
    # - For virtual machine shapes, the number of CPU cores and memory
    # - For bare metal and Exadata shapes, the number of CPU cores, memory, and storage
    #
    # To get a list of shapes, use the {#list_db_system_shapes list_db_system_shapes} operation.
    #
    # @return [String]
    attr_accessor :shape

    # The time zone to use for the DB system. For details, see [DB System Time Zones](https://docs.cloud.oracle.com/Content/Database/References/timezones.htm).
    # @return [String]
    attr_accessor :time_zone

    # @return [OCI::Database::Models::DbSystemOptions]
    attr_accessor :db_system_options

    # If true, Sparse Diskgroup is configured for Exadata dbsystem. If False, Sparse diskgroup is not configured.
    #
    # @return [BOOLEAN]
    attr_accessor :sparse_diskgroup

    # **[Required]** The public key portion of the key pair to use for SSH access to the DB system. Multiple public keys can be provided. The length of the combined keys cannot exceed 40,000 characters.
    # @return [Array<String>]
    attr_accessor :ssh_public_keys

    # **[Required]** The hostname for the DB system. The hostname must begin with an alphabetic character, and
    # can contain alphanumeric characters and hyphens (-). The maximum length of the hostname is 16 characters for bare metal and virtual machine DB systems, and 12 characters for Exadata DB systems.
    #
    # The maximum length of the combined hostname and domain is 63 characters.
    #
    # **Note:** The hostname must be unique within the subnet. If it is not unique,
    # the DB system will fail to provision.
    #
    # @return [String]
    attr_accessor :hostname

    # A domain name used for the DB system. If the Oracle-provided Internet and VCN
    # Resolver is enabled for the specified subnet, the domain name for the subnet is used
    # (do not provide one). Otherwise, provide a valid DNS domain name. Hyphens (-) are not permitted.
    #
    # @return [String]
    attr_accessor :domain

    # **[Required]** The number of CPU cores to enable for a bare metal or Exadata DB system. The valid values depend on the specified shape:
    #
    # - BM.DenseIO1.36 - Specify a multiple of 2, from 2 to 36.
    # - BM.DenseIO2.52 - Specify a multiple of 2, from 2 to 52.
    # - Exadata.Base.48 - Specify a multiple of 2, from 0 to 48.
    # - Exadata.Quarter1.84 - Specify a multiple of 2, from 22 to 84.
    # - Exadata.Half1.168 - Specify a multiple of 4, from 44 to 168.
    # - Exadata.Full1.336 - Specify a multiple of 8, from 88 to 336.
    # - Exadata.Quarter2.92 - Specify a multiple of 2, from 0 to 92.
    # - Exadata.Half2.184 - Specify a multiple of 4, from 0 to 184.
    # - Exadata.Full2.368 - Specify a multiple of 8, from 0 to 368.
    #
    # This parameter is not used for virtual machine DB systems because virtual machine DB systems have a set number of cores for each shape.
    # For information about the number of cores for a virtual machine DB system shape, see [Virtual Machine DB Systems](https://docs.cloud.oracle.com/Content/Database/Concepts/overview.htm#virtualmachine)
    #
    # @return [Integer]
    attr_accessor :cpu_core_count

    # The cluster name for Exadata and 2-node RAC virtual machine DB systems. The cluster name must begin with an an alphabetic character, and may contain hyphens (-). Underscores (_) are not permitted. The cluster name can be no longer than 11 characters and is not case sensitive.
    #
    # @return [String]
    attr_accessor :cluster_name

    # The percentage assigned to DATA storage (user data and database files).
    # The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups).
    # Specify 80 or 40. The default is 80 percent assigned to DATA storage. Not applicable for virtual machine DB systems.
    #
    # @return [Integer]
    attr_accessor :data_storage_percentage

    # Size (in GB) of the initial data volume that will be created and attached to a virtual machine DB system. You can scale up storage after provisioning, as needed. Note that the total storage size attached will be more than the amount you specify to allow for REDO/RECO space and software volume.
    #
    # @return [Integer]
    attr_accessor :initial_data_storage_size_in_gb

    # The number of nodes to launch for a 2-node RAC virtual machine DB system. Specify either 1 or 2.
    #
    # @return [Integer]
    attr_accessor :node_count

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

    # The source of the database:
    # Use `NONE` for creating a new database. Use `DB_BACKUP` for creating a new database by restoring from a backup. The default is `NONE`.
    #
    # @return [String]
    attr_reader :source

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'fault_domains': :'faultDomains',
        'display_name': :'displayName',
        'availability_domain': :'availabilityDomain',
        'subnet_id': :'subnetId',
        'backup_subnet_id': :'backupSubnetId',
        'nsg_ids': :'nsgIds',
        'backup_network_nsg_ids': :'backupNetworkNsgIds',
        'shape': :'shape',
        'time_zone': :'timeZone',
        'db_system_options': :'dbSystemOptions',
        'sparse_diskgroup': :'sparseDiskgroup',
        'ssh_public_keys': :'sshPublicKeys',
        'hostname': :'hostname',
        'domain': :'domain',
        'cpu_core_count': :'cpuCoreCount',
        'cluster_name': :'clusterName',
        'data_storage_percentage': :'dataStoragePercentage',
        'initial_data_storage_size_in_gb': :'initialDataStorageSizeInGB',
        'node_count': :'nodeCount',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'source': :'source'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'fault_domains': :'Array<String>',
        'display_name': :'String',
        'availability_domain': :'String',
        'subnet_id': :'String',
        'backup_subnet_id': :'String',
        'nsg_ids': :'Array<String>',
        'backup_network_nsg_ids': :'Array<String>',
        'shape': :'String',
        'time_zone': :'String',
        'db_system_options': :'OCI::Database::Models::DbSystemOptions',
        'sparse_diskgroup': :'BOOLEAN',
        'ssh_public_keys': :'Array<String>',
        'hostname': :'String',
        'domain': :'String',
        'cpu_core_count': :'Integer',
        'cluster_name': :'String',
        'data_storage_percentage': :'Integer',
        'initial_data_storage_size_in_gb': :'Integer',
        'node_count': :'Integer',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'source': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize


    # Given the hash representation of a subtype of this class,
    # use the info in the hash to return the class of the subtype.
    def self.get_subtype(object_hash)
      type = object_hash[:'source'] # rubocop:disable Style/SymbolLiteral

      return 'OCI::Database::Models::LaunchDbSystemDetails' if type == 'NONE'
      return 'OCI::Database::Models::LaunchDbSystemFromBackupDetails' if type == 'DB_BACKUP'

      # TODO: Log a warning when the subtype is not found.
      'OCI::Database::Models::LaunchDbSystemBase'
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [Array<String>] :fault_domains The value to assign to the {#fault_domains} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :availability_domain The value to assign to the {#availability_domain} property
    # @option attributes [String] :subnet_id The value to assign to the {#subnet_id} property
    # @option attributes [String] :backup_subnet_id The value to assign to the {#backup_subnet_id} property
    # @option attributes [Array<String>] :nsg_ids The value to assign to the {#nsg_ids} property
    # @option attributes [Array<String>] :backup_network_nsg_ids The value to assign to the {#backup_network_nsg_ids} property
    # @option attributes [String] :shape The value to assign to the {#shape} property
    # @option attributes [String] :time_zone The value to assign to the {#time_zone} property
    # @option attributes [OCI::Database::Models::DbSystemOptions] :db_system_options The value to assign to the {#db_system_options} property
    # @option attributes [BOOLEAN] :sparse_diskgroup The value to assign to the {#sparse_diskgroup} property
    # @option attributes [Array<String>] :ssh_public_keys The value to assign to the {#ssh_public_keys} property
    # @option attributes [String] :hostname The value to assign to the {#hostname} property
    # @option attributes [String] :domain The value to assign to the {#domain} property
    # @option attributes [Integer] :cpu_core_count The value to assign to the {#cpu_core_count} property
    # @option attributes [String] :cluster_name The value to assign to the {#cluster_name} property
    # @option attributes [Integer] :data_storage_percentage The value to assign to the {#data_storage_percentage} property
    # @option attributes [Integer] :initial_data_storage_size_in_gb The value to assign to the {#initial_data_storage_size_in_gb} property
    # @option attributes [Integer] :node_count The value to assign to the {#node_count} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [String] :source The value to assign to the {#source} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.fault_domains = attributes[:'faultDomains'] if attributes[:'faultDomains']

      raise 'You cannot provide both :faultDomains and :fault_domains' if attributes.key?(:'faultDomains') && attributes.key?(:'fault_domains')

      self.fault_domains = attributes[:'fault_domains'] if attributes[:'fault_domains']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.availability_domain = attributes[:'availabilityDomain'] if attributes[:'availabilityDomain']

      raise 'You cannot provide both :availabilityDomain and :availability_domain' if attributes.key?(:'availabilityDomain') && attributes.key?(:'availability_domain')

      self.availability_domain = attributes[:'availability_domain'] if attributes[:'availability_domain']

      self.subnet_id = attributes[:'subnetId'] if attributes[:'subnetId']

      raise 'You cannot provide both :subnetId and :subnet_id' if attributes.key?(:'subnetId') && attributes.key?(:'subnet_id')

      self.subnet_id = attributes[:'subnet_id'] if attributes[:'subnet_id']

      self.backup_subnet_id = attributes[:'backupSubnetId'] if attributes[:'backupSubnetId']

      raise 'You cannot provide both :backupSubnetId and :backup_subnet_id' if attributes.key?(:'backupSubnetId') && attributes.key?(:'backup_subnet_id')

      self.backup_subnet_id = attributes[:'backup_subnet_id'] if attributes[:'backup_subnet_id']

      self.nsg_ids = attributes[:'nsgIds'] if attributes[:'nsgIds']

      raise 'You cannot provide both :nsgIds and :nsg_ids' if attributes.key?(:'nsgIds') && attributes.key?(:'nsg_ids')

      self.nsg_ids = attributes[:'nsg_ids'] if attributes[:'nsg_ids']

      self.backup_network_nsg_ids = attributes[:'backupNetworkNsgIds'] if attributes[:'backupNetworkNsgIds']

      raise 'You cannot provide both :backupNetworkNsgIds and :backup_network_nsg_ids' if attributes.key?(:'backupNetworkNsgIds') && attributes.key?(:'backup_network_nsg_ids')

      self.backup_network_nsg_ids = attributes[:'backup_network_nsg_ids'] if attributes[:'backup_network_nsg_ids']

      self.shape = attributes[:'shape'] if attributes[:'shape']

      self.time_zone = attributes[:'timeZone'] if attributes[:'timeZone']

      raise 'You cannot provide both :timeZone and :time_zone' if attributes.key?(:'timeZone') && attributes.key?(:'time_zone')

      self.time_zone = attributes[:'time_zone'] if attributes[:'time_zone']

      self.db_system_options = attributes[:'dbSystemOptions'] if attributes[:'dbSystemOptions']

      raise 'You cannot provide both :dbSystemOptions and :db_system_options' if attributes.key?(:'dbSystemOptions') && attributes.key?(:'db_system_options')

      self.db_system_options = attributes[:'db_system_options'] if attributes[:'db_system_options']

      self.sparse_diskgroup = attributes[:'sparseDiskgroup'] unless attributes[:'sparseDiskgroup'].nil?

      raise 'You cannot provide both :sparseDiskgroup and :sparse_diskgroup' if attributes.key?(:'sparseDiskgroup') && attributes.key?(:'sparse_diskgroup')

      self.sparse_diskgroup = attributes[:'sparse_diskgroup'] unless attributes[:'sparse_diskgroup'].nil?

      self.ssh_public_keys = attributes[:'sshPublicKeys'] if attributes[:'sshPublicKeys']

      raise 'You cannot provide both :sshPublicKeys and :ssh_public_keys' if attributes.key?(:'sshPublicKeys') && attributes.key?(:'ssh_public_keys')

      self.ssh_public_keys = attributes[:'ssh_public_keys'] if attributes[:'ssh_public_keys']

      self.hostname = attributes[:'hostname'] if attributes[:'hostname']

      self.domain = attributes[:'domain'] if attributes[:'domain']

      self.cpu_core_count = attributes[:'cpuCoreCount'] if attributes[:'cpuCoreCount']

      raise 'You cannot provide both :cpuCoreCount and :cpu_core_count' if attributes.key?(:'cpuCoreCount') && attributes.key?(:'cpu_core_count')

      self.cpu_core_count = attributes[:'cpu_core_count'] if attributes[:'cpu_core_count']

      self.cluster_name = attributes[:'clusterName'] if attributes[:'clusterName']

      raise 'You cannot provide both :clusterName and :cluster_name' if attributes.key?(:'clusterName') && attributes.key?(:'cluster_name')

      self.cluster_name = attributes[:'cluster_name'] if attributes[:'cluster_name']

      self.data_storage_percentage = attributes[:'dataStoragePercentage'] if attributes[:'dataStoragePercentage']

      raise 'You cannot provide both :dataStoragePercentage and :data_storage_percentage' if attributes.key?(:'dataStoragePercentage') && attributes.key?(:'data_storage_percentage')

      self.data_storage_percentage = attributes[:'data_storage_percentage'] if attributes[:'data_storage_percentage']

      self.initial_data_storage_size_in_gb = attributes[:'initialDataStorageSizeInGB'] if attributes[:'initialDataStorageSizeInGB']

      raise 'You cannot provide both :initialDataStorageSizeInGB and :initial_data_storage_size_in_gb' if attributes.key?(:'initialDataStorageSizeInGB') && attributes.key?(:'initial_data_storage_size_in_gb')

      self.initial_data_storage_size_in_gb = attributes[:'initial_data_storage_size_in_gb'] if attributes[:'initial_data_storage_size_in_gb']

      self.node_count = attributes[:'nodeCount'] if attributes[:'nodeCount']

      raise 'You cannot provide both :nodeCount and :node_count' if attributes.key?(:'nodeCount') && attributes.key?(:'node_count')

      self.node_count = attributes[:'node_count'] if attributes[:'node_count']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.source = attributes[:'source'] if attributes[:'source']
      self.source = "NONE" if source.nil? && !attributes.key?(:'source') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source)
      raise "Invalid value for 'source': this must be one of the values in SOURCE_ENUM." if source && !SOURCE_ENUM.include?(source)

      @source = source
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        compartment_id == other.compartment_id &&
        fault_domains == other.fault_domains &&
        display_name == other.display_name &&
        availability_domain == other.availability_domain &&
        subnet_id == other.subnet_id &&
        backup_subnet_id == other.backup_subnet_id &&
        nsg_ids == other.nsg_ids &&
        backup_network_nsg_ids == other.backup_network_nsg_ids &&
        shape == other.shape &&
        time_zone == other.time_zone &&
        db_system_options == other.db_system_options &&
        sparse_diskgroup == other.sparse_diskgroup &&
        ssh_public_keys == other.ssh_public_keys &&
        hostname == other.hostname &&
        domain == other.domain &&
        cpu_core_count == other.cpu_core_count &&
        cluster_name == other.cluster_name &&
        data_storage_percentage == other.data_storage_percentage &&
        initial_data_storage_size_in_gb == other.initial_data_storage_size_in_gb &&
        node_count == other.node_count &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        source == other.source
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
      [compartment_id, fault_domains, display_name, availability_domain, subnet_id, backup_subnet_id, nsg_ids, backup_network_nsg_ids, shape, time_zone, db_system_options, sparse_diskgroup, ssh_public_keys, hostname, domain, cpu_core_count, cluster_name, data_storage_percentage, initial_data_storage_size_in_gb, node_count, freeform_tags, defined_tags, source].hash
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
