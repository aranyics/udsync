# ~/.config/sync/datasets.sh

# -------------------
# BIDS test dataset
# -------------------
DATASET_bidstest_local="/mnt/raid6_dmis0/proj/bids"
DATASET_bidstest_komondor="/project/nr_pproc/bids_testdata"
# DATASET_bidstest_azure="" #TODO have a ccslurm or azure vm host

DATASET_bidstest_excludes=(
  --exclude=**/derivatives/
  --exclude=**/sourcedata/
  --exclude=**/nipype_wd/
  --exclude=**/process/
  --exclude=**/confidential/
)

DATASET_bidstest_opts=()


# -------------------
# AMLLoop data
# -------------------
DATASET_aml_local="/mnt/raid6_data/user/${USER}/AMLlooptest"
DATASET_aml_komondor="/project/nr_pproc/software/AML/AMLProjects"
# DATASET_aml_azure="" #TODO have a ccslurm or azure vm host

DATASET_aml_excludes=(
  --exclude=**/jobs*/
  --exclude=**/presets/
  --exclude=**/reports*/
  --exclude=**/schedule*/
  --exclude=**/EDA/
  --exclude=**/AML/
  --exclude=**/*archive*/
  --exclude=**/*old*/
  --exclude=**/*test*/
  --exclude=**/hcpdcm*/
)

DATASET_aml_opts=()


# -------------------
# Clinical projects
# -------------------
DATASET_clin_local="/home/${USER}/python/amlloop_clinical/ClinicalProjects"
DATASET_clin_komondor="/project/nr_pproc/software/AML/ClinicalProjects"
# DATASET_clin_azure="" #TODO have a ccslurm or azure vm host

DATASET_clin_excludes=(
  --exclude=**/Proteomics_StandaloneTest/
)

DATASET_clin_opts=()


# Other examples
# # -------------------
# # Results dataset
# # -------------------
# DATASET_results_local="/home/me/results"
# DATASET_results_hpc="/scratch/myuser/results"
# 
# DATASET_results_excludes=(
#   "--exclude=**/*.tmp"
#   "--exclude=**/*.log"
# )
# 
# DATASET_results_opts=()
# 
# # -------------------
# # Raw archive
# # -------------------
# DATASET_raw_local="/mnt/archive/raw"
# DATASET_raw_hpc="/scratch/myuser/raw"
# 
# DATASET_raw_excludes=(
#   "--exclude=**/*.zip"
#   "--exclude=**/*.tar.gz"
# )
# 
# DATASET_raw_opts=(
#   "--size-only"
# )
