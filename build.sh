export WEB3_NETWORK=gochain
# for ethereum:
# export WEB3_NETWORK=ethereum
KEYS="$(web3 account create)"

IFS=$'\n' read -rd '' -a lines <<<"$KEYS"

PRIVATE_KEY="$(echo ${lines[0]} | cut -d':' -f2)"
PUBLIC_KEY="$(echo ${lines[1]} | cut -d':' -f2)"

export WEB3_PRIVATE_KEY=$PRIVATE_KEY
echo $WEB3_PRIVATE_KEY

# web3 generate contract erc721 --symbol MNSA --name "M&S Archive Token" --base-uri http://mnsa-api.northeurope.azurecontainer.io

# web3 contract build MNSA.sol
# web3 contract deploy MNSA.bin