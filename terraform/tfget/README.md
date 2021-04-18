# tfget

Simple bash script that sets a given terraform version as default for the current system, fetching the correct binary if needed.

Tested on GNU/Linux and MacOS operating systems, but only on x86_64 platforms (it may work also on different environments though).

## Usage

`tfget [version]`

where `version` is either the exact version number you want `tfget` to fetch and install for you (as it is shown on the official Terraform's GitHub repository) or the latest version given a pattern.
I.e. `tfget latest0.12` will install the most recent version belonging to 0.12 family.

If `version` is omitted the currently installed Terraform version is displayed (as output of `terraform version`) and nothing gets actually changed.

