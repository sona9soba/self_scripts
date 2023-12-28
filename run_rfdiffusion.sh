#!/bin/bash
#In this example, we want to design a carbon backbone structure with reference pdb.
#We use gpu for the computation, allocate 32GB memory for each batch, allocate one rtx2070 gpu for each batch.
#You can change the path of BASE_DIR, INPUT_PATH, OUTPUT_PATH.
#(contigs)In this example, we want to create binders with a length ranging from 10 to 20 amino acids. 
#(contigs)We want to use the chain A(from amino acid 1 to 271), from the reference pdb. 
#(hotspot_res)We want the binder to have interaction with the 19th, 22th, 26th residue of chain A of reference pdb.
#(num_designs)We want to create two designs per one carbon backbone design.  
#(denoiser)These parameters decide the diversity of design. Default is 0 for both parameters. Higher values generate more diverse designs. 
#(ckpt_override_path)If you want more diverse backbone designs with helices and sheets mixed, you can add this parameter. 

BASE_DIR=’/home/hpclab/Documents/RFdiffuson’
INPUT_PATH=’/home/hpclab/Documents/RFdiffusion/inputs/OTUB1_Ub.pdb’
OUTPUT_DIR=’/home/hpclab/Documents/RFdiffusion/outputs’
$BASE_DIR/run_inference.py \
inference.output_prefix=$OUTPUT_DIR/my_design \
inference.input_pdb=$INPUT_PATH \
'contigmap.contigs=[10-20/0 A43-61/65-236/246-271/279-353]' \
'ppi.hotspot_res=[A19,A22,A26]' \
inference.num_designs=200 \
denoiser.noise_scale_ca=0.5 \
denoiser.noise_scale_frame=0.5 \
inference.ckpt_override_path=models/Complex_beta_ckpt.pt 
