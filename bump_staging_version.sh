#!/bin/bash

# This script needs to be edited to bump new master hash to new staging hash for new release.
# - run this script after running bump_master_version.sh and merging staging into master
# - run this script in master branch
# - after running this script merge master into staging

OLD_TENSILE_HASH="c8bce10c3f9b4ce38f6d9e5ca5ef1ebb8804cc15"
NEW_TENSILE_HASH="c8bce10c3f9b4ce38f6d9e5ca5ef1ebb8804cc15"

OLD_ROCBLAS_VERSION="2.44.0"
NEW_ROCBLAS_VERSION="2.45.0"

sed -i "s/${OLD_TENSILE_HASH}/${NEW_TENSILE_HASH}/g" tensile_tag.txt

sed -i "s/${OLD_ROCBLAS_VERSION}/${NEW_ROCBLAS_VERSION}/g" CMakeLists.txt

