#!/bin/sh -l

# shellcheck disable=SC2039
echo -e "${INPUT_KEY}" >__TEMP_INPUT_KEY_FILE

chmod 600 __TEMP_INPUT_KEY_FILE

if test -n "${INPUT_ENSUREREMOTE}"; then
  ssh -o StrictHostKeyChecking=no -v -i __TEMP_INPUT_KEY_FILE -p "${INPUT_PORT}" "${INPUT_USER}"@"${INPUT_HOST}" "mkdir -p ${INPUT_REMOTE}"
fi

scp -o StrictHostKeyChecking=no -v -i __TEMP_INPUT_KEY_FILE -P "${INPUT_PORT}" -r ${INPUT_LOCAL} "${INPUT_USER}"@"${INPUT_HOST}":"${INPUT_REMOTE}"
