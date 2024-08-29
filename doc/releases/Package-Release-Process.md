# Package Release Process

> Only for maintainers of the package.

## Release Process (step by step)

### Main package

1. Create release branch with corresponding new release version `x.y.z`.
   For example if we want to release version 1.0.0 then release branch should be named `release/1.0.0`.
   - Update version in `pubspec.yaml` to the version we want to have. (following the example it would be `1.0.0`).
   - Update [CHANGELOG.md](../../CHANGELOG.md) with the new release version and short description what changed.
   - Create a PR targeting `main` branch.
2. After PR is merged create a git tag from `main` branch and push it to the repository:

   ```shell
   git checkout main
   git tag "1.0.0"
   git push origin "1.0.0"
   ```

3. The [publish workflow](../../.github/workflows/publish.yaml) will automatically run after
   the new tag is pushed to the repository and publish the new package version to
   [pub.dev](https://pub.dev/packages/mistralai_client_dart) and create a new release on GitHub.

In case of OAS changes the release branch will be automatically created after merging the PR with the OAS changes.
Check the [Client-Code-Generation](../contribute/Client-Code-Generation.md) for more details.

### FlutterFlow version (Deprecated)

> :warning: Everything related to FlutterFlow release should be done against `flutter-flow` branch.

1. Create release branch with corresponding new release version. For example if we want to release version 1.0.0 then release branch should be named `flutter-flow/release/1.0.0` - Base branch should be `flutter-flow` and not `main` (:warning: that's important).
   - Update version in `pubspec.yaml` to the version we want to have. (following the example it would be `1.0.0`).
   - Update [CHANGELOG.md](../../CHANGELOG.md) with the new release version and short description what changed.
   - Cherry-pick/merge any changes from `main` branch that should be included in the release.
   - Create a PR targeting `flutter-flow` branch.
2. After PR is merged create a GitHub release using `Draft a new release`:
   - create new tag `flutter-flow/1.0.0` from GitHub release form. Tap `choose tag` -> type in new version for example `1.0.0`. The tag should be created on release publish.
   - Change target branch to `flutter-flow`.
   - Auto generate release notes (adjust the releases notes if needed)
   - Set title of release to the name of version. For example if we want to release version 1.0.0 then release title should be `flutter-flow/1.0.0`.
   - Unckeck `Set as the latest release` checkbox.
   - Publish release.
3. Publish the package to [pub.dev](https://pub.dev)
   - checkout tag that was created in step 5.
   - run `dart pub publish` from the (you have to be logged in to pub.dev and have access to publishing to the package).
