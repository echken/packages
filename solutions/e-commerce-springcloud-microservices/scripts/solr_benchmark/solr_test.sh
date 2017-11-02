#!/bin/bash

NORM_USER=0
FILTER_USER=$1
FACET_USER=0

TARGET="arm64"
DEST_IP="192.168.11.249"

TARGET="x86"
DEST_IP="192.168.11.243"

TIME_INSEC=1800
#TIME_INSEC=300

TEST_RESULT_DIR="/estuarytest/solr_${TARGET}_testresult/normal${NORM_USER}-filter${FILTER_USER}-facet${FACET_USER}/"

./solr_benchmark_test.sh ${DEST_IP}  8983 ${NORM_USER} ${FILTER_USER} ${FACET_USER} ${TIME_INSEC} "192.168.11.247,192.168.11.246" ${TEST_RESULT_DIR}

