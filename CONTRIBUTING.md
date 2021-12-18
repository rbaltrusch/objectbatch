# Contributions to this repository

Welcome to this repository and thanks for considering to contribute! Every contribution is welcome, no matter how small or large.

## Open points

Currently, there are no large plans for this repository. However, if you have an idea and would like to contribute, this is not a problem!
Simply submit an issue that details your contribution idea and submit a pull request to fix that issue.

## Setting up your branch

To setup your local development environment, open a terminal and run the following:

```
git clone https://github.com/rbaltrusch/file_management_gui
```

### Tests

To run all tests, run the following commands in MATLAB:

```
cd tests
run_tests
```

### Linter

To run the linter on all m-files in the repository, run the following commands in MATLAB:
```
cd tests
lint_files
```

Please make sure that all tests still pass after your contribution. If code changes are implemented on your branch, please also commit new tests or update existing tests, if applicable.

### Github Actions

After pushing to your branch, you should be able to see whether the existing workflows still pass. Make sure that all workflows that passed before your changes are still passing, otherwise your pull request will need to fix those failures first after being submitted.

## Pull requests

The general procedure for submitting pull requests that can be easily reviewed and accepted is detailed in the [pull request template](.github/pull_request_template.md).
Please go through the points specified in the template before submitting your pull request to avoid a lengthy back-and-forth between reviews and refactoring your changes.

### Pull requests without issues

If what you are improving on in your pull request is not detailed in any issue, it would be great if you could submit an issue first and then submit your pull request, referencing that issue.

## Contact

For any questions or feedback, please raise an issue or reach out to me by email: richard@baltrusch.net.
