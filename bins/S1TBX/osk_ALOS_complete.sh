#! /bin/bash

WORKSPACE=/data/home/Andreas.Vollrath/datasets/Sri_Lanka/FBD

source /data/home/Andreas.Vollrath/github/OpenSARKit_source.sh
cd $WORKSPACE

for JAHR in `ls -1`; do

	osk_bulk_ALOS_L1_1_preprocess $WORKSPACE/$JAHR /data/home/Andreas.Vollrath/datasets/Sri_Lanka/DEM/Sri_Lanka_SRTM1_filled.tif

	osk_ALOS_merge_path $WORKSPACE/$JAHR

done