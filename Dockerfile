FROM hashicorp/terraform:light
MAINTAINER Ming Wu <myhusky@gmail.com>

ENV TERRAGRUNT_VERSION=v0.14.0
ADD https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 /bin/terragrunt
RUN chmod +x /bin/terragrunt

ENTRYPOINT ["/bin/terragrunt"]
