#!/bin/bash
oc() { 
    "${OCD_SCRIPTS_PATH}/oc_wrapper.sh" "$@" 
}
oc project "$PROJECT"
oc import-image react-redux-realworld:v0.0.2 --from=docker.io/simonmassey/react-redux-realworld:v0.0.2 --confirm
oc import-image react-redux-realworld:v0.0.1 --from=docker.io/simonmassey/react-redux-realworld:v0.0.1 --confirm
oc tag react-redux-realworld:v0.0.2 react-redux-realworld:latest
