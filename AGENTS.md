# AGENTS

The instructions below guide Codex when working in this repository.

## Swift Documentation Guidelines
- All Swift source files must begin with a brief file-level comment explaining the purpose of the file.
- Public types, methods, and properties should include `///` documentation comments.
- Use `// MARK:` to organize code into logical sections where appropriate.
- Leave a blank line after the summary sentence in documentation comments for initializers.
- Do not wrap system type names (e.g., CGFloat, ScaledMetric) in backticks.
- Place `@propertyWrapper` on the same line as the type declaration and document the type.
- Document stored properties and group them under `// MARK: - Private Properties`.
- Surround each `// MARK:` with blank lines and use a dash separator.
- Ensure a blank line before the closing brace of any type.
- List computed properties before initializers.

## API Usage
- Only use APIs available in the latest major releases of macOS, iOS, tvOS, and watchOS.
- Avoid deprecated or legacy APIs.

## Testing
Run `swift test -v` after making changes to ensure the package builds and tests pass.
