echo "Starting deployment process..."

# Pull Internet Identity as a dependency from the mainnet and deploy locally
echo "Pulling and deploying Internet Identity..."
dfx deps pull
dfx deps init --argument '(null)' internet_identity
dfx deps deploy



echo "Deploying backend..."
dfx deploy backend

echo "Deploying frontend..."
dfx deploy frontend

echo "Frontend canister via Safari : http://localhost:8080/?canisterId=$(dfx canister id frontend)"
