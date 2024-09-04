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

# Globally set the SITE_HOST variable 🌐
if [ -z ${CODESPACE_NAME+x} ]; then
	export SITE_DOMAIN="localhost"
	export SITE_HOST="localhost"
else
	export SITE_DOMAIN="${CODESPACE_NAME}-443.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
	export SITE_HOST="https://${CODESPACE_NAME}-443.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
fi

# Update the CODESPACES-WELCOME-MESSAGE.md file with the Codespace URL but first Ignore those changes in Git 📩
git update-index --assume-unchanged .devcontainer/CODESPACES-WELCOME-MESSAGE.md
sed -i "s|{insert-codespace-url-here}|$SITE_HOST|" .devcontainer/CODESPACES-WELCOME-MESSAGE.md && \

# Install the bundler from ruby gems
echo "🔧 Installing the bundler from ruby gems"
gem install bundler

# Check for updates before building
bundle update

# Install required bundles from the Gemfile
echo "🔧 Installing required bundles from the Gemfile"
bundle install --verbose

# Serve the Jekyll site
echo "🚀 Serving the Jekyll site"
bundle exec jekyll serve --host 0.0.0.0 --port 4000 --open-url --force_polling --drafts --trace --livereload

# Mark DOCUMENT_ROOT and WEB_ROOT as Safe Directories for .git to access 🧑‍💻
echo "\n🧑‍💻 Adding Safe Directories for .git to access\n"
git config --global --add safe.directory ./
