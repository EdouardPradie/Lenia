set windows-shell   :=  ["powershell.exe", "-NoLogo", "-Command"]
set shell := ["bash", "-uc"]

target-dir := "target"

format:
    @cargo fmt

build:
    @cargo build

run: build
    @cargo run

gen_documentation:
    @cargo doc --no-deps --target-dir docs

clean:
    @rm -rf {{ target-dir }}
