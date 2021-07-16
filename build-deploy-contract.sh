export WEB3_NETWORK=gochain

if [ ! -f "MNSA.sol" ]; then
	web3 generate contract erc1155 --symbol MNSA --name "M&S Archive Token" --base-uri https://raw.githubusercontent.com/crmitchelmore/mnsa-nft/main/
	web3 contract build MNSA.sol
fi

web3 contract deploy MNSA.bin