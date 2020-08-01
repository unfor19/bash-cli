#!/bin/bash
error_msg(){
    local msg=$1
    echo -e "[ERROR] ${msg}"
    exit 1
}

log_msg(){
    local msg=$1
    echo -e "[LOG] ${msg}"
}