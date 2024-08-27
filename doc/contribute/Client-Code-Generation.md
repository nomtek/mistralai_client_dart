# Client Code Generation

## Introduction

This document describes how to generate client code from the OpenAPI specification of Mistral AI. It will also describe decisions made during why we chose to use the tools we did.

## Generating Client Code

To generate client code, we use the [fork](https://github.com/gawi151/openapi_spec.git) of [openapi_spec](https://pub.dev/packages/openapi_spec) tool. This tool is a Dart package that generates client code from an OpenAPI specification.

### [Default way] Client Generated on CI

1. The CI will periodically check if the OpenAPI specification has changed and if it has, it will prepare a PR with the updated `openapi-original.yaml`.
The PR should be reviewed and merged by a team member.

2. Next CI will prepare an issue, branch and draft PR where team member will continue on manual update of `openapi-modified.yaml` based on the changes in `openapi-original.yaml` - Start from step 3 in [Generating Client Code Locally](#generating-client-code-locally).

3. After updating the code and pushing the changes to the branch, the CI will run the tests and check if the PR is ready to be published.

4. If the PR is ready to be published, the team member should merge the PR and the CI will publish the new version of the package.

### Generating Client Code Locally

1. update openapi specification in `openapi_specs/openapi-original.yaml` by running the following command:

    ```shell
    dart run openapi_specs/update_openapi_spec.dart
    ```

2. If `openapi_specs/openapi-original.yaml` did not change there's nothing to do. If it did change go to next step.

3. Migrate `openapi_spec/openapi-original.yaml` from OpenAPI 3.1.0 to OpenAPI 3.0.3
   - this is a manual step at the moment
   - basically you need to diff the to files and update `openapi-modified.yaml` based on `openapi-original.yaml`
   - while updating the `openapi-modified.yaml` make sure to apply changes but in a way that the file is still valid [OpenAPI 3.0.3](https://spec.openapis.org/oas/v3.0.3)
   - in existing `openapi-modified.yaml` you will find a comment before each change that was made to migrate from 3.1.0 to 3.0.3 - use that as a reference
   - each new change should have a comment explaining why it was made
   - there are few reasons that change was applied:
     - downgrade from 3.1.0 to 3.0.3
     - fix an issue with the generated code (renaming, not supported features etc)
     - fix an issue with original OpenAPI spec (missing required fields, wrong types etc)

4. run the following command to generate the client code:

    ```shell
    dart run openapi_specs/generate_client.dart
    ```

    The generated code will be in the `generated` directory.

5. add examples for new API endpoints in `example` directory (if needed)

6. check if all examples are working by running the following command:

    ```shell
    dart run openapi_specs/run_all_examples.dart
    ```

7. update changelog in `CHANGELOG.md` with the changes made

8. update version in `pubspec.yaml` to the next version (follow [Semantic Versioning](https://semver.org/))
   - if we have a breaking change increase major version
   - if we have a new feature without breaking changes increase minor version
   - if we have a bug fix or doc change increase patch version

## Why

This section will contain the reasons why we chose to use the tools we did.

- explanation why we chose [openapi_spec](https://github.com/nomtek/mistralai_client_dart/issues/64#issuecomment-2309784601)
