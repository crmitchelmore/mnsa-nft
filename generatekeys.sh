export WEB3_NETWORK=gochain

# for ethereum:
# export WEB3_NETWORK=ethereum
KEYS="$(web3 account create)"

echo $KEYS

IFS=$'\n' read -rd '' -a lines <<<"$KEYS"

PRIVATE_KEY="$(echo ${lines[0]} | cut -d':' -f2 | tr -d '[:space:]')"
PUBLIC_KEY="$(echo ${lines[1]} | cut -d':' -f2 | tr -d '[:space:]')" 

echo "WEB3_PRIVATE_KEY=$WEB3_PRIVATE_KEY" >> .env
echo "WEB3_PUBLIC_KEY=$PUBLIC_KEY" >> .env
