FROM hashicorp/terraform:light
FROM vault:1.2.3
FROM hashicorp/packer:light
FROM alpine:latest

COPY --from=0 /bin/terraform /bin/terraform
COPY --from=1 /bin/vault /bin/vault
COPY --from=2 /bin/packer /bin/packer
