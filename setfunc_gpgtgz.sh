#!/bin/bash

cat>/home/$USER/.bash_functions.d/gpgtgz.sh<'endofgpgtgz'
gpgtgz() {
    # Check if all 3 arguments are provided
    if [ "$#" -ne 3 ]; then
        echo "Usage: encrypt_backup <folder_or_file> <recipient_email> <output_directory>"
        return 1
    fi

    local target="$1"
    local recipient="$2"
    local outdir="$3"

    # Extract just the filename or folder name from the input path
    local target_name
    target_name=$(basename "$target")

    # Generate timestamp with no spaces (Format: YYYYMMDD_HHMMSS)
    local timestamp
    timestamp=$(date +%Y%m%d_%H%M%S)

    # Construct the final output path: name_YYYYMMDD_HHMMSS.tar.gz.gpg
    local outfile="${outdir}/${target_name}_${timestamp}.tar.gz.gpg"

    # Run the tar and gpg command
    tar -cz "$target" | gpg --encrypt --recipient "$recipient" --output "$outfile"
    echo "Backup created and encrypted successfully at: $outfile"
}

endofgpgtgz
