<p align="center"><a href="https://builtmighty.com.com" target="_blank"><img src="https://s12.gifyu.com/images/SD41P.png" width="700"></a></p>
 <h4 align="center">*NOTE: This devcontainer does not use the typical format as it is setup for a static Jekyll site. -</h4>

## Built Mighty Dev Env

This repo is used to automate a Development Environment for your project via GitHub Codespaces.

It defines the runtime environment, dependencies, Database, Platform configurations and development tools
required to work on the project in a consistent and reproducible manner.

The settings in this file are specific to the Visual Studio Code Remote Containers extension, which allows you to develop inside a containerized
environment.

---

## Table of Contents

- [Getting Started](#getting-started)
- [File Structure Explained](#file-structure-explained)
- [Retriving the Remote Site](#retriving-the-remote-site)
- [View Org Codespaces Status](#view-org-codespaces-status)
- [Additional Resources](#additional-resources)


## Getting Started

If the repository you are working on has a `.devcontainer` folder and the [Repo's Codespace Secrets have been set](#codespace-secrets), you can open it in GitHub Codespaces using the button below and selecting the repo and branch you want to work from.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/builtmighty/)


> Additionally, you can open the repo in GitHub's GUI by following these steps:
- Select the branch you want to work from in GitHub's GUI
- Click the "Code" button in the top right of the repo
- Select "Open with Codespaces".

---

## File Structure Explained
`devcontainer.json`: This is the main configuration file for a Dev Container. It specifies the Docker image or Dockerfile to use for the container, any extensions that should be installed, environment variables to set, and more.

`setup.sh`: This script is ran when the container is created. You can use it to install additional tools, set up the environment, or perform other tasks for the specified platform.

`build.sh`: This script is used to build additional scripts for the project that this template is used on. It installs the required dependencies and tools for the specified dev platform or apllication.

## Refreshing the ENV

The devcontainer uses the builtmighty/migrate-site-script.git to pull the remote target sites DB and untracked codebase into your Codespace ENV. To learn more see: the [migrate-site-script](https://github.com/builtmighty/migrate-site-script/) repo's README.

If you need to re-run this script to refresh the Dev ENV's setup, you can do so by running the following command in the terminal after the Codespace has been created:

```bash
bash .devcontainer/scripts/setup.sh
```

> ⛔️ Running this script will wipe all Data in your Databsase and replace it with fresh Data from the remote target source. This will also update any new untracked files in your Codespace from the remote target site.

---
## View Org Codespaces Status:

To view the status of all Codespaces in the Org as an **Admin**, use the GitHub CLI to run the following command:

```bash
gh codespace list --org builtmighty
```

---

## Additional Resources

- [Codespaces Documentation](https://docs.github.com/en/codespaces)

- [Codespaces API](https://docs.github.com/en/rest/reference/codespaces)

- [Codespaces CLI](https://cli.github.com/manual/gh_codespace_list)

- [Codespaces REST API](https://docs.github.com/en/rest/reference/codespaces)

- [Codespaces Webhook Events](https://docs.github.com/en/developers/webhooks-and-events/webhook-events-and-payloads#codespaces)

---

For more information on how to configure Codespaces in GitHub, refer to the
official documentation: https://docs.github.com/en/codespaces


