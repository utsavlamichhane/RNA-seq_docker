 **sra-env** — Portable RNA-Seq Toolkit

A one-command Docker image that bundles the core utilities you need for small-to-medium RNA-Seq projects—built entirely from **Bioconda** and **Conda-Forge** packages.

| Tool / Package | Channel | Notes |
|----------------|---------|-------|
| **Python 3.10** | conda-forge | scripting & glue |
| **cutadapt** | bioconda | adapter/quality trimming |
| **fastqc** | bioconda | per-sample QC |
| **multiqc** | bioconda | aggregate QC reports |
| **hisat2** | bioconda | splice-aware aligner |
| **samtools** | bioconda | BAM/CRAM manipulation |
| **subread** | bioconda | `featureCounts` for gene-level quant |
| **sra-tools** | bioconda | `fasterq-dump`, `prefetch`, etc. |
| **raxml / raxml-ng**, **emboss** | bioconda | phylogenetics & misc. utilities |

*(Exact versions are pinned in [`sra-env.yml`](./sra-env.yml).)*


