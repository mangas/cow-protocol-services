node-url := ""

help:
    @just -l

run-autopilot
    cargo run --bin autopilot -- --native-price-estimators "baseline|http://driver/baseline" --skip-event-sync true --node-url {{node-url}} --shadow https://api.cow.fi/mainnet --drivers "mysolver1|http://localhost:11088/mysolver1"

run-driver: 
    cargo run -p driver -- --config driver.config.toml --ethrpc {{node-url}}

