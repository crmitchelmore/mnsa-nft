export WEB3_NETWORK=gochain

if [ ! -f "MNSA.sol" ]; then
	web3 generate contract erc721 --symbol MNSA --name "M&S Archive Token" --base-uri http://mnsa-api.northeurope.azurecontainer.io
	web3 contract build MNSA.sol
fi

web3 contract deploy MNSA.bin