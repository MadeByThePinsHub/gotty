FROM gitpod/workspace-full

RUN sudo mkdir -p /workspace/go \
    && sudo touch /workspace/.hello-world \
    && sudo mkdir /workspace/.tmp \
    && sudo chown -vR 33333:33333 /workspace

WORKDIR /workspace/.tmp
COPY Makefile /workspace/.tmp/
RUN make tools \
    && rm Makefile
