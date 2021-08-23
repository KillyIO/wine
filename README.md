# wine

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## VSCode Launch Config

```json
{
  // Use IntelliSense to learn about possible attributes.
  // Hover to view descriptions of existing attributes.
  // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Flutter Dev",
      "request": "launch",
      "type": "dart",
      "program": "lib/main_development.dart",
      "args": ["--flavor", "development"]
    },
    {
      "name": "Flutter Dev Device Preview",
      "request": "launch",
      "type": "dart",
      "program": "lib/main_development_device_preview.dart",
      "args": ["--flavor", "development"]
    },
    {
      "name": "Flutter Dev Web",
      "request": "launch",
      "type": "dart",
      "program": "lib/main_development.dart",
      "args": [
        "--flavor",
        "development",
        "--web-hostname",
        "localhost",
        "--web-port",
        "7357"
      ]
    },
    {
      "name": "Flutter Pro",
      "request": "launch",
      "type": "dart",
      "program": "lib/main_production.dart",
      "args": ["--flavor", "production"]
    }
  ]
}
```
