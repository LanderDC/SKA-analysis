# Snakemake workflow: `SKA-analysis`

[![Snakemake](https://img.shields.io/badge/snakemake-≥6.3.0-brightgreen.svg)](https://snakemake.github.io)


A Snakemake workflow for the analysis of NGS reads with SKA (Harris, 2018) to identify the (mosquito) species of different samples.


## Usage
### Quick usage

Make sure to have a tab-separated file that contains your sample name in the first column (`sample`), forward read paths in the second column (`fq1`) and the reverse read paths in the third (`fq2`). For an example see the `samples.tsv` file.

```bash
snakemake --profile slurm-profile/
```

