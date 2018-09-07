GETH_RUN()
{
    SPACE_SIGNATURE="address value"

    local addresses="${1}"
    shift

    local value="${1}"
    shift

    docker run -it --entrypoint="sh" -p 8545:8545 ethereum/client-go:alpine -c "(echo \"var addresses='$addresses'; addresses.split(',').map(function(address){ eth.sendTransaction({from:eth.accounts[0], to:address, value:${value}})});\"; cat) | /geth --dev --mine console --rpc --rpcaddr 0.0.0.0 --rpccorsdomain='*'"
}
