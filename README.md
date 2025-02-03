# Flutter Architectures ![Flutter CI](https://github.com/Pierry/flutter_architectures/actions/workflows/dart.yml/badge.svg)

# MVVM (Model-View-ViewModel)
MVVM separates the UI (View) from the business logic (ViewModel) and data (Model). The ViewModel exposes data and commands to the View, clearly separating concerns and making the code more testable and maintainable.

```
lib/
├── models/          # data models
├── viewmodels/      # view models - logic
├── views/           # screens and widgets
└── services/        # services - API and data
```

# BLoC (Business Logic Component)
BLoC is a reactive pattern that uses streams to manage app state. It decouples business logic from the UI, allowing data to flow in a single direction and making the app more predictable and easier to test.

```
lib/
├── blocs/           # logic
├── models/          # data models
├── views/           # screens and widgets
└── repositories/    # data
```

# Clean Architecture
Clean Architecture organizes code into layers (presentation, domain, and data) to separate concerns. It promotes independence from frameworks and databases, making the app scalable, testable, and maintainable.

```
lib/
├── data/            # repositories and data in general
├── domain/          # entities and use cases
└── presentation/    # ui and view models
```


