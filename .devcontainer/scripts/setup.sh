#!/bin/sh

# =====================================================================================================================================
echo  "\n===============================================================================\n"
echo  "🔧 Setting up the Codespaces environment for the $GITHUB_REPOSITORY Repo 🔧 \n"
echo  "The following actions will be executed as part of the Codespaces setup"
echo  "1. Serve the Jekyll site"
echo  "2. Mark directory as safe for .git to access"
echo  "3. Exit script with Success Code - 0"
echo  "\n===============================================================================\n"

# Serve the Jekyll site
echo "🚀 Serving the Jekyll site"
nohup bundle exec jekyll serve --force_polling --trace > ~/jekyll_output.log 2>&1 &
echo "\`Jekyll serve\` is running in the background"
echo "Build logs are available at ~/jekyll_output.log"

# Mark DOCUMENT_ROOT and WEB_ROOT as Safe Directories for .git to access 🧑‍💻
echo "\n🧑‍💻 Adding Safe Directories for .git to access\n"
git config --global --add safe.directory ./
