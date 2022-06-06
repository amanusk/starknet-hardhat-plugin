#!/bin/bash
set -e


echo "Testing with deleted artifact on recompiler option set to false"
rm -rf starknet-artifacts/contracts/contract.cairo/
npx hardhat run --no-compile scripts/deploy.ts 2>&1 |
    ../scripts/assert-contains.py "$EXPECTED"
echo "Success"