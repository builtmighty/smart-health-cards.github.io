#!/bin/sh

# =====================================================================================================================================
echo  "\n===============================================================================\n"
echo  "🔧 Setting up the Codespaces environment for the $GITHUB_REPOSITORY Repo 🔧 \n"
echo  "The following actions will be executed as part of the Codespaces setup"
echo  "1. Install the bundler from ruby gems"
echo  "2. Install required bundles from the Gemfile"
echo  "3. Serve the Jekyll site"
echo  "8. Exit script with Success Code - 0"
echo  "\n===============================================================================\n"

# Update the CODESPACES-WELCOME-MESSAGE.md file with the Codespace URL but first Ignore those changes in Git 📩
git update-index --assume-unchanged $DOCUMENT_ROOT/.devcontainer/CODESPACES-WELCOME-MESSAGE.md
sed -i "s|{insert-codespace-url-here}|$SITE_HOST|" $DOCUMENT_ROOT/.devcontainer/CODESPACES-WELCOME-MESSAGE.md && \

# Install the bundler from ruby gems
echo "🔧 Installing the bundler from ruby gems"
gem install bundler

# Install required bundles from the Gemfile
echo "🔧 Installing required bundles from the Gemfile"
bundle install --verbose

# Serve the Jekyll site
echo "🚀 Serving the Jekyll site"
bundle exec jekyll serve --port 443
