#!/bin/bash

if [[ $# -eq 1 ]]
then
        file=$1
        output_filename='car-executable'

        echo "Compiling executable as $output_filename from: $(pwd)/$file..."
        if gcc -o $output_filename $file
        then
                echo $'Finished compiling successfully, now running...\n'
                ./$output_filename #&&

                # Optional output at the end (the '&&' above not needed if not included):
                echo $'\nFinished. The executable will not be deleted'

                # FOLLOWING CODE REMOVED AS 'rm car-file' COULD BE DANGEROUS
                # echo '' # Newline
                # echo "Finished, now deleting executable: $output_filename..."
                # rm $output_filename
                # echo $'Done!'
        else
                echo $'\nDid not compile successfully, there is no executable to run.'
        fi

else
        echo 'Incorrect number of params provided'
        echo 'The car command, or Compile And Run, will use gcc to compile and run an executable'
fi
