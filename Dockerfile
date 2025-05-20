# --- RNA-Seq environment (Conda) ---------------------------------------------
FROM mambaforge/mambaforge:latest          # tiny, multi-arch Conda base

# 1. copy the environment spec into the image
COPY sra-env.yml /tmp/env.yml

# 2. build the Conda env (lands in /opt/conda/envs/sra-env)
RUN mamba env create -f /tmp/env.yml --quiet && \
    mamba clean -afy && \
    echo "conda activate sra-env" >> /etc/profile.d/conda.sh

# 3. final container settings
SHELL ["bash", "-l", "-c"]                 # every RUN uses login-style bash
WORKDIR /workspace
ENV PATH=/opt/conda/envs/sra-env/bin:$PATH
ENTRYPOINT ["/bin/bash"]
CMD ["-l"]                                 # default ⇒ interactive shell
