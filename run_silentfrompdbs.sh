#!/bin/bash
BASE_DIR=’/home/hpclab/Documents/dl_binder_design/silent_tools’
INPUT_PATH=’/home/hpclab/Documents/dl_binder_design/input’
OUTPUT_DIR=’/home/hpclab/Documents/dl_binder_design/output’
$BASE_DIR/silentfrompdbs $INPUT_PATH/*.pdb > $OUTPUT_DIR/Carbon_backbone.silent