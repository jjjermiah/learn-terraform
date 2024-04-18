<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_google"></a> [google](#provider\_google) (5.25.0)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [google_compute_firewall.flask](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) (resource)
- [google_compute_firewall.ssh](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) (resource)
- [google_compute_instance.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) (resource)
- [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) (resource)
- [google_compute_subnetwork.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) (resource)

## Required Inputs

No required inputs.

## Optional Inputs

No optional inputs.

## Outputs

The following outputs are exported:

### <a name="output_Web-server-URL"></a> [Web-server-URL](#output\_Web-server-URL)

Description: A variable for extracting the external IP address of the VM
<!-- END_TF_DOCS -->