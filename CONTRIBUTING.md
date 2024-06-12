# Contributing to Mistral AI Client for Dart

Thank you for considering contributing to Mistral AI Client for Dart! We appreciate your time and effort.

## Table of Contents

- [Contributing to Mistral AI Client for Dart](#contributing-to-mistral-ai-client-for-dart)
  - [Table of Contents](#table-of-contents)
  - [How Can I Contribute?](#how-can-i-contribute)
    - [Reporting Bugs](#reporting-bugs)
    - [Suggesting Enhancements](#suggesting-enhancements)
    - [Code Contributions](#code-contributions)
    - [Documentation](#documentation)
  - [Getting Started](#getting-started)
    - [Setting Up the Development Environment](#setting-up-the-development-environment)
  - [Style Guide](#style-guide)
  - [Review Process](#review-process)

## How Can I Contribute?

### Reporting Bugs

Before submitting a bug report, please check if the issue has already been reported in the [issue tracker](https://github.com/nomtek/mistralai_client_dart/issues). If it hasn't, create a new issue with a clear title and description, including steps to reproduce the bug and labeling issue as `bug`.

To make it easier we have a bug report template which gives you all the things you need to create a bug report and help us squash those bugs.

### Suggesting Enhancements

If you have an idea for an improvement or a new feature, we'd love to hear about it! Create a new issue in the [issue tracker](https://github.com/nomtek/mistralai_client_dart/issues) with your suggestion, and we can discuss it further. 

Make sure that you mark an issue with `enhancement` label or use our feature request issue template.

### Code Contributions

We welcome contributions to the codebase. To contribute:

1. [Fork the repository](https://help.github.com/en/github/getting-started-with-github/fork-a-repo).
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with clear and concise messages.
4. Push your changes to your fork.
5. [Submit a pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/proposing-changes-to-your-work-with-pull-requests), explaining the changes you made.

### Documentation

Improving documentation is a valuable contribution. If you find areas that need clarification or have ideas for better explanations, please make the necessary updates.

To contribute to documentation follow the same steps as in [Code Contributions](#code-contributions).

## Getting Started

### Setting Up the Development Environment

1. Install Dart SDK
   1. Using [Flutter SDK installation gude](https://docs.flutter.dev/get-started/install) when you also want to develop apps
   2. Using [standalone installation](https://dart.dev/get-dart)
2. [Install](https://dart.dev/tools#ides-and-editors) your favourite IDE
3. Run `dart pub get` in terminal to get dependencies
4. If everything went well you're good to go 😊

### Code generation

We are using [json_serializable](https://pub.dev/packages/json_serializable) package to generate code for serializing and deserializing JSON models.
We are committing the generated code to the repository.

In order to generate code run:

```shell
dart run build_runner build -d
```

## Style Guide

We following official [dart code style](https://dart.dev/effective-dart/style) as a base style guide.

On top of that we are using [very_good_analysis](https://pub.dev/packages/very_good_analysis) package to keep code as consistent as we can with strict rules the package provides.

## Review Process

After submitting pull request few things will happen:

1. **Reviewers Assigned:**
   - The maintainers will be automatically notified of your pull request.
   - They will assign one or more reviewers to assess your changes.

2. **Address Feedback:**
   - Respond promptly to any feedback or comments from reviewers.
   - Make additional commits to address concerns raised during the review.

3. **Continuous Integration (CI):**
   - Automated tests will be run on your changes using our CI system.
   - Ensure that all tests pass successfully.

4. **Approval and Merging:**
    - Once your changes are approved, a maintainer will merge your pull request.
    - The changes will be reflected in the main branch.

5. **Celebrate:**
    - Congratulations! Your contribution has been successfully merged.
    - Also, you will be mentioned in the changelog when your change is released!
