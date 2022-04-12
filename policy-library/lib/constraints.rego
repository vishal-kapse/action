
package validator.gcp.lib

# Function to fetch the constraint spec
# Usage:
# get_constraint_params(constraint, params)

get_constraint_params(constraint) = params {
	params := constraint.spec.parameters
}

# Function to fetch constraint info
# Usage:
# get_constraint_info(constraint, info)

get_constraint_info(constraint) = info {
	info := {
		"name": constraint.metadata.name,
		"kind": constraint.kind,
	}
}
