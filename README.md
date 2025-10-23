# flutter_fvm_protoc

When you run `dart pub global activate protoc_plugin` as recommended in the official documentation for `protoc_plugin`, it generates a `protoc-gen-dart` executable that internally runs the `dart` command.
If your Flutter project uses `fvm` to manage Flutter and Dart versions, you might want to avoid using the global `dart` command by replacing it with the `fvm dart` command.

You can achieve this with the following steps:  

- Create an executable file at `scripts/protoc-gen-dart` that internally runs `fvm dart run protoc_plugin`.  
- Specify the plugin directly to `protoc` by adding the option `--plugin=protoc-gen-dart=./scripts/protoc-gen-dart`.

See `Makefile` for details.
