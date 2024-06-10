#!/bin/bash


# Ensure the destination directory exists
mkdir -p "${destination_dir}"

pwd

# Loop through folders in the source directory
for folder_name in "${source_dir}"/*; do
  # Check if the folder name is an integral number
  if [[ -d "$folder_name" && "$folder_name" =~ ^(.*/)?[0-9]+$ ]]; then
    # Copy the folder to the destination directory
    cp -r "$folder_name" "${destination_dir}"
    echo "Copied $folder_name to ${destination_dir}"
  fi
done


cp -r "${source_dir}"/system          "${destination_dir}"
cp -r "${source_dir}"/constant        "${destination_dir}"
cp -r "${source_dir}"/log.simpleFoam  "${destination_dir}"

echo "Copied systems, constant and log.simpleFoam to ${destination_dir}"
