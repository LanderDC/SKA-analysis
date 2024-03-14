# Snakemake workflow: `SKA-analysis`

[![Snakemake](https://img.shields.io/badge/snakemake-≥6.3.0-brightgreen.svg)](https://snakemake.github.io)


A Snakemake workflow for the analysis of NGS reads with SKA (Harris, 2018) to identify the (mosquito) species of different samples.


## Usage
### Quick usage

1. Make sure to have a tab-separated file that contains your sample name in the first column (`sample`), forward read paths in the second column (`fq1`) and the reverse read paths in the third (`fq2`). For an example see the `samples.tsv` file.

2. In `config/config.yaml` provide the right path to the genome you want to map your reads to.

3. Run following command from a `tmux` window (make sure you have `snakemake` installed):

```bash
snakemake --profile slurm-profile/
```

Snakemake will handle the submitting of jobs and the output removal of failed jobs.

The final output is a `ska.distances.tsv` file, which can be used for a cluster analysis to determine the samples' species.

### Advanced Usage
In `slurm-profile/config.yaml` you can change specific slurm job settings.

