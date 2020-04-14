# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

module OCI
  module ApplicationMigration
    # Module containing models for requests made to, and responses received from,
    # OCI ApplicationMigration services
    module Models
    end
  end
end

# Require models
require 'oci/application_migration/models/authorization_details'
require 'oci/application_migration/models/change_compartment_details'
require 'oci/application_migration/models/configuration_field'
require 'oci/application_migration/models/create_migration_details'
require 'oci/application_migration/models/create_source_details'
require 'oci/application_migration/models/discovery_details'
require 'oci/application_migration/models/ics_discovery_details'
require 'oci/application_migration/models/internal_authorization_details'
require 'oci/application_migration/models/internal_source_details'
require 'oci/application_migration/models/jcs_discovery_details'
require 'oci/application_migration/models/migration'
require 'oci/application_migration/models/migration_lifecycle_states'
require 'oci/application_migration/models/migration_states'
require 'oci/application_migration/models/migration_summary'
require 'oci/application_migration/models/migration_types'
require 'oci/application_migration/models/oac_discovery_details'
require 'oci/application_migration/models/ocic_authorization_details'
require 'oci/application_migration/models/ocic_source_details'
require 'oci/application_migration/models/oic_discovery_details'
require 'oci/application_migration/models/operation_status'
require 'oci/application_migration/models/operation_types'
require 'oci/application_migration/models/pcs_discovery_details'
require 'oci/application_migration/models/soacs_discovery_details'
require 'oci/application_migration/models/sort_orders'
require 'oci/application_migration/models/source'
require 'oci/application_migration/models/source_application'
require 'oci/application_migration/models/source_application_summary'
require 'oci/application_migration/models/source_details'
require 'oci/application_migration/models/source_lifecycle_states'
require 'oci/application_migration/models/source_summary'
require 'oci/application_migration/models/source_types'
require 'oci/application_migration/models/update_migration_details'
require 'oci/application_migration/models/update_source_details'
require 'oci/application_migration/models/work_request'
require 'oci/application_migration/models/work_request_error'
require 'oci/application_migration/models/work_request_log_entry'
require 'oci/application_migration/models/work_request_resource'
require 'oci/application_migration/models/work_request_summary'

# Require generated clients
require 'oci/application_migration/application_migration_client'

# Require service utilities
require 'oci/application_migration/util'
