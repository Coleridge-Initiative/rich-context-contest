#!/bin/bash
    
# The config file can include:
# - `BASE_FOLDER_IN` - base folder (usually where this script lives).
# - `GIT_REPO_FOLDER_PATH_IN` - the path to the git repo (defaults to "/rich-context-competition" inside the base folder).
# - `EVALUATE_FOLER_PATH_IN` - path to the evaluate code folder inside the git repository.
# - `TEMPLATE_FOLDER_PATH_IN` - path to the template code folder inside the git repository.
# - `DATA_FOLDER_PATH_IN` (`-d` option) - path to the data folder for a given run of the model.
# - `PROJECT_FOLDER_PATH_IN` (`-p` option) - path to the project folder for the current model.
# - `DEBUG` - set to "`true`" or "`false`".  If set to "`true`", results in much more verbose output.
#
# NOTE: When using configuration files, make sure to set variable "ALLOW_CONFIG" to "true" in scripts/vault_shared.sh.

# set configuration variables
BASE_FOLDER_PATH_IN=".."

# model-related folders
PROJECT_FOLDER_PATH_IN="${BASE_FOLDER_PATH_IN}/project"

# input and output folders

# EITHER set this:
DATA_FOLDER_PATH_IN="${BASE_FOLDER_PATH_IN}/data"

# OR set `DATA_FOLDER_PATH_IN=` and set separate input and output folders:
INPUT_FOLDER_PATH_IN="${BASE_FOLDER_PATH_IN}/data/input"
OUTPUT_FOLDER_PATH_IN="${BASE_FOLDER_PATH_IN}/data/output"

#===============================================================================
# WARNING - do not alter below this point unless you know what you are doing.
#===============================================================================

# git repo folders
GIT_REPO_FOLDER_PATH_IN="${BASE_FOLDER_PATH_IN}/rich-context-competition"
EVALUATE_FOLDER_PATH_IN="${GIT_REPO_FOLDER_PATH_IN}/evaluate"
TEMPLATE_FOLDER_PATH_IN="${GIT_REPO_FOLDER_PATH_IN}/templates"

# docker
DOCKER_IMAGE_NAME_IN="my_rcc"
DOCKER_CONTAINER_NAME_IN="${DOCKER_IMAGE_NAME_IN}_run"
USE_BUILD_CACHE_IN=false
DOCKER_CUSTOM_RUN_OPTIONS_IN=

# debug
DEBUG=false
