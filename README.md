# Provisioning and deployment of my services

This repository provides an overview of how I provision resources and deploy my services. It was created by combining my deployment and provisioning repositories into one and then removing and redacting secret information. The structure should still be clear after removing the sensitive parts.

In the `/provisioning` folder you can see how DigitalOcean resources are provisioned with static IP addresses and preconfigured SSH keys. As a bonus there is a PowerShell script to comment a Terraform plan on an Azure DevOps PR (it's missing my wrapper over the fantastic [rover](https://github.com/im2nguyen/rover) tool, maybe that can be a feature-length blog post).

In the `/deployment` folder you can see how the deployment structure is created from `docker-compose` files, how the Caddy proxy is configured, how traffic is routed for [alert.prout.tech](https://alert.prout.tech/) and [caddyfmt.prout.tech](https://caddyfmt.prout.tech/) and the `ansible` playbooks and roles used to configure the virtual machines. As another bonus there is also my playbook to create a SLURM cluster on a single machine using some custom Docker images (maybe another pending blog post).
