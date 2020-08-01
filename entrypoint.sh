#!/bin/bash

source "${PWD}"/"$(dirname ${BASH_SOURCE[0]})"/scripts/bargs.sh "$@"
source scripts/messages.sh

gender_msg=
msg="Welcome to the bash-cli template!"
if [[ -n "${GENDER}" ]]; then
    if [[ "${GENDER}" == "female" ]]; then
        gender_msg="Nice to meet you my lady ${PERSON_NAME}."
    elif [[ "${GENDER}" == "male" ]]; then
        gender_msg="Pleasure to meet you mister ${PERSON_NAME}."
    elif [[ "${GENDER}" == "none" ]]; then
        gender_msg="Hello there ${PERSON_NAME}."
    fi
else
    gender_msg="You cracked an easter egg ${PERSON_NAME}"
fi

if [[ -n "${gender_msg}" ]]; then
    msg="${msg}\n${gender_msg}"
fi

echo -e "${msg}"

declare -i pension_age=67
if [[ -n "${AGE}" ]]; then
    declare -i age=${AGE}
    years_to_retire=$((pension_age-age))
    [[ $age -eq 0 && $years_to_retire -eq 67 ]] && error_msg "Please insert a valid age"
    echo -e "You can retire in ${years_to_retire} years."
fi
