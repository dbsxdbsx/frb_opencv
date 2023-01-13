default: gen lint

gen:
    flutter pub get
    flutter_rust_bridge_codegen \
        --rust-input \
        "native/src/api_1.rs" \
        "native/src/api_2.rs" \
        --dart-output \
        "lib/gened_api_1.dart" \
        "lib/gened_api_2.dart" \
        --rust-output \
        "native/src/gened_api_1.rs" \
        "native/src/gened_api_2.rs" \
        --class-name \
        "Api1" \
        "Api2" \
        --wasm \

    # --dart-decl-output "lib/bridge_definitions.dart" \


lint:
    cd native && cargo fmt
    dart format .

clean:
    flutter clean
    cd native && cargo clean

serve *args='':
    flutter pub run flutter_rust_bridge:serve {{args}}

# vim:expandtab:sw=4:ts=4
