FROM gcr.io/cloud-builders/gcloud-slim

RUN /builder/google-cloud-sdk/bin/gcloud -q components install \
        alpha beta \
        terraform-tools \
    # Clean up
    rm -rf /var/lib/apt/lists/*