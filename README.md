# Random Gen

Fast way of generating random strings of text and passwords.

## Getting started

Add the package to your dependencies.
`random_gen: ^1.0.0`

## Usage

```dart

// Quickest way.

final password = RandomGenerator.password();

final customPassword = RandomGenerator.password(
    length: 32,
    includeLowercase: false
);

// Using builders.

final passwordBuilder = RandomBuilder()
    ..withSymbols(false)
    ..withLength(8);

final password = passwordBuilder.build();
```