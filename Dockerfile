# conda environment 
FROM mambaforge/mambaforge:latest          # #tiny, multi-arch Conda (the base conda)


###ok copy the environment specs into the IMAge
COPY sra-env.yml /tmp/env.yml


##conda env (i mean building conda env)
RUN mamba env create -f /tmp/env.yml --quiet && \
    mamba clean -afy && \
    echo "conda activate sra-env" >> /etc/profile.d/conda.sh


##the container setting
SHELL ["bash", "-l", "-c"]                 ###login style kindaa bash
WORKDIR /workspace
ENV PATH=/opt/conda/envs/sra-env/bin:$PATH
ENTRYPOINT ["/bin/bash"]
CMD ["-l"]                                 #######the defau us interactive 
