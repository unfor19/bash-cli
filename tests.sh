#!/bin/bash
source scripts/messages.sh

should(){
    local expected=$1
    local test_name=$2
    local expr=$3
    echo "-------------------------------------------------------"
    log_msg "$test_name - Should $expected"
    log_msg "Executing: $expr"
    output_msg=$(trap '$expr' EXIT)
    output_code=$?

    log_msg "Output: \n\n$output_msg\n"

    if [[ $expected == "pass" && $output_code -eq 0 ]]; then
        log_msg "Test passed as expected"
    elif [[ $expected == "fail" && $output_code -eq 1 ]]; then
        log_msg "Test failed as expected"
    else
        log_msg "Test output is not expected, terminating"
    fi
}