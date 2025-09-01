node-url := "http://127.0.0.1:8546"
shadow-url := "https://api.cow.fi/mainnet"
barn-url := "https://barn.api.cow.fi/mainnet"

help:
    @just -l

# TODO: Fix address, taken from dune dashboard as an example.
run-autopilot:
    cargo run --bin autopilot -- --native-price-estimators "baseline|http://127.0.0.1:10088/baseline" --skip-event-sync true --node-url {{node-url}} --shadow {{ barn-url }} --drivers "solver|http://127.0.0.1:10088/mysolver|0xc7899ff6a3ac2ff59261bd960a8c880df06e1041"

run-driver: 
    cargo run -p driver -- --config ~/.config/cow_protocol/driver-config.toml --ethrpc {{node-url}}

