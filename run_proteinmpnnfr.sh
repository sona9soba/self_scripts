#!/bin/bash

#ARGUMENTS
#parser.add_argument( "-pdbdir", type=str, default="", help='The name of a directory of pdbs to run through the model' )
#parser.add_argument( "-silent", type=str, default="", help='The name of a silent file to run through the model' )
#parser.add_argument( "-outpdbdir", type=str, default="outputs", help='The directory to which the output PDB files will be written, used if the -pdbdir arg is active' )
#parser.add_argument( "-outsilent", type=str, default="out.silent", help='The name of the silent file to which output structs will be written, used if the -silent arg is active' )
#parser.add_argument( "-runlist", type=str, default='', help="The path of a list of pdb tags to run, only active when the -pdbdir arg is active (default: ''; Run all PDBs)" )
#parser.add_argument( "-checkpoint_name", type=str, default='check.point', help="The name of a file where tags which have finished will be written (default: check.point)" )
#parser.add_argument( "-debug", action="store_true", default=False, help='When active, errors will cause the script to crash and the error message to be printed out (default: False)')
#parser.add_argument( "-relax_cycles", type=int, default=1, help="The number of relax cycles to perform on each structure (default: 1)" )
#parser.add_argument( "-output_intermediates", action="store_true", help='Whether to write all intermediate sequences from the relax cycles to disk (default: False)' )
#parser.add_argument( "-seqs_per_struct", type=int, default="1", help="The number of sequences to generate for each structure (default: 1)" )
#parser.add_argument( "-checkpoint_path", type=str, default=os.path.join(script_dir, 'ProteinMPNN/vanilla_model_weights/v_48_020.pt'), help=f"The path to the ProteinMPNN weights you wish to use, default {os.path.join(script_dir, 'ProteinMPNN/vanilla_model_weights/v_48_020.pt')}")
#parser.add_argument( "-temperature", type=float, default=0.000001, help='The sampling temperature to use when running ProteinMPNN (default: 0.000001)' )
#parser.add_argument( "-augment_eps", type=float, default=0, help='The variance of random noise to add to the atomic coordinates (default 0)' )
#parser.add_argument( "-protein_features", type=str, default='full', help='What type of protein features to input to ProteinMPNN (default: full)' )
#parser.add_argument( "-omit_AAs", type=str, default='CX', help='A string of all residue types (one letter case-insensitive) that you would not like to use for design. Letters not corresponding to residue types will be ignored (default: CX)' )
#parser.add_argument( "-bias_AA_jsonl", type=str, default='', help='The path to a JSON file containing a dictionary mapping residue one-letter names to the bias for that residue eg. {A: -1.1, F: 0.7} (default: ''; no bias)' )
#parser.add_argument( "-num_connections", type=int, default=48, help='Number of neighbors each residue is connected to. Do not mess around with this argument unless you have a specific set of ProteinMPNN weights which expects a different number of connections. (default: 48)' )

BASE_DIR=’/home/hpclab/Documents/dl_binder_design/mpnn_fr’
INPUT_PATH=’/home/hpclab/Documents/dl_binder_design/input’
$BASE_DIR/dl_interface_design.py \
-silent INPUT_PATH/Carbon_backbone.silent \
-output_intermediates \
-checkpoint_path $BASE_DIR/ProteinMPNN/vanilla_model_weights/v_48_020.pt
