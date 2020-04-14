# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

module OCI
  module OsManagement
    # Module containing models for requests made to, and responses received from,
    # OCI OsManagement services
    module Models
    end
  end
end

# Require models
require 'oci/os_management/models/add_packages_to_software_source_details'
require 'oci/os_management/models/api_error'
require 'oci/os_management/models/arch_types'
require 'oci/os_management/models/attach_child_software_source_to_managed_instance_details'
require 'oci/os_management/models/attach_parent_software_source_to_managed_instance_details'
require 'oci/os_management/models/available_software_source_summary'
require 'oci/os_management/models/available_update_summary'
require 'oci/os_management/models/change_managed_instance_group_compartment_details'
require 'oci/os_management/models/change_scheduled_job_compartment_details'
require 'oci/os_management/models/change_software_source_compartment_details'
require 'oci/os_management/models/checksum_types'
require 'oci/os_management/models/create_managed_instance_group_details'
require 'oci/os_management/models/create_scheduled_job_details'
require 'oci/os_management/models/create_software_source_details'
require 'oci/os_management/models/detach_child_software_source_from_managed_instance_details'
require 'oci/os_management/models/detach_parent_software_source_from_managed_instance_details'
require 'oci/os_management/models/errata_id'
require 'oci/os_management/models/erratum'
require 'oci/os_management/models/erratum_summary'
require 'oci/os_management/models/id'
require 'oci/os_management/models/installable_package_summary'
require 'oci/os_management/models/installed_package_summary'
require 'oci/os_management/models/interval_types'
require 'oci/os_management/models/lifecycle_states'
require 'oci/os_management/models/managed_instance'
require 'oci/os_management/models/managed_instance_group'
require 'oci/os_management/models/managed_instance_group_summary'
require 'oci/os_management/models/managed_instance_summary'
require 'oci/os_management/models/managed_instance_update_details'
require 'oci/os_management/models/operation_status'
require 'oci/os_management/models/operation_types'
require 'oci/os_management/models/package_name'
require 'oci/os_management/models/package_update_types'
require 'oci/os_management/models/recurrence'
require 'oci/os_management/models/remove_packages_from_software_source_details'
require 'oci/os_management/models/schedule_types'
require 'oci/os_management/models/scheduled_job'
require 'oci/os_management/models/scheduled_job_summary'
require 'oci/os_management/models/software_package'
require 'oci/os_management/models/software_package_dependency'
require 'oci/os_management/models/software_package_file'
require 'oci/os_management/models/software_package_search_summary'
require 'oci/os_management/models/software_package_summary'
require 'oci/os_management/models/software_source'
require 'oci/os_management/models/software_source_id'
require 'oci/os_management/models/software_source_summary'
require 'oci/os_management/models/updatable_package_summary'
require 'oci/os_management/models/update_managed_instance_group_details'
require 'oci/os_management/models/update_scheduled_job_details'
require 'oci/os_management/models/update_software_source_details'
require 'oci/os_management/models/update_types'
require 'oci/os_management/models/work_request'
require 'oci/os_management/models/work_request_error'
require 'oci/os_management/models/work_request_log_entry'
require 'oci/os_management/models/work_request_resource'
require 'oci/os_management/models/work_request_summary'

# Require generated clients
require 'oci/os_management/os_management_client'
require 'oci/os_management/os_management_client_composite_operations'

# Require service utilities
require 'oci/os_management/util'
