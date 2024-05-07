#!/bin/bash

if [[ -n "${bashism}" ]]; then
    printf 'Should not be using bashism such as [[ ]]' 
fi

read -r -p 'What colour are your roses?' rose_colour
printf 'Your roses are "%s"\n' "${rose_colour}"
