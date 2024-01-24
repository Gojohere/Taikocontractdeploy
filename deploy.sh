#!/bin/bash
# Convert the script to Unix format
dos2unix "$0"
# Taiko Blockchain Deployment Script

# Gather information for deployment
read -p "Enter your Git email: " wizard_email
read -p "Enter your Git name: " wizard_name
read -p "Please provide your private key (Use a burner wallet): " WIZARD_PRIVATE_KEY

# Configure Git settings
git config --global user.email "$wizard_email"
git config --global user.name "$wizard_name"

# Setup Taiko Github account and install Foundry for blockchain magic
echo "🔧 Setting up your Taiko Github account and installing Foundry for blockchain magic..."
curl -L https://foundry.paradigm.xyz | bash
export PATH="$HOME/.foundry/bin:$PATH"

# Source mystical shell file
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
elif [ -f ~/.zshenv ]; then
  source ~/.zshenv
else
  echo "📜 No mystical .bashrc or .zshenv scrolls found, but no worries..."
  exit 1
fi

# Update Foundry and download Taiko binaries
echo "🌐 Updating Foundry and downloading Taiko binaries..."
foundryup

# Initialize Forge and install Taiko standard library
echo "🚀 Initializing Forge and installing Taiko standard library..."
forge init enchanted_foundry --force
cd enchanted_foundry || { echo "🚨 Failed to enter the enchanted directory"; exit 1; }
forge install foundry-rs/forge-std --no-commit

# Create and deploy the Counter contract on Taiko
echo "⚙️ Creating and deploying the Counter contract on Taiko..."
forge create src/Counter.sol:Counter \
  --rpc-url https://rpc.katla.taiko.xyz \
  --private-key "$WIZARD_PRIVATE_KEY"

# Celebration and thanks for completing the deployment
echo -e "\n\n🎉 Congratulations! Your Taiko deployment is complete 🚀"
echo "🌟 Thank you for using the Taiko Blockchain Deployment Script! May your Taiko smart contracts prosper!"
