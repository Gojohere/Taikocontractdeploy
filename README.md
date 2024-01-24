# Taiko Testnet Contract Deployment Script

## Introduction

This script simplifies the deployment process of smart contracts on the Taiko blockchain. It automates the setup, configuration, and deployment steps, making it easy for users to deploy contract on taiko testnet.

## Usage

1. **Clone the Repository:**
 ```
git clone https://github.com/gojohere/taikocontractdeploy.git
cd taikocontractdeploy
chmod +x deploy.sh
 ```

2. **Run the Script:**
- Open a terminal and navigate to the cloned directory.
- Execute the script:
  ```
  ./deploy.sh
  ```

3. **Follow the Wizard:**
- The script will prompt you for your Git email, name, and a private key (use a burner wallet).
- It will then set up your Taiko Github account, install Foundry, and perform other necessary configurations.

4. **Deployment:**
- The script will initialize Forge, install the Taiko standard library, and deploy the contract on Taiko testnet.
- After successful deployment, you'll receive a congratulatory message.

## Prerequisites

- [Git] installed on your system.
- A Github account.
- A burner wallet for generating a private key.

## Notes

- Ensure you have internet connectivity during the script execution as it fetches dependencies and tools from the Taiko blockchain ecosystem.

## Acknowledgments

- Special thanks to the https://github.com/dante4rt/Ramanode-Guides.
- Feel free to connect .

