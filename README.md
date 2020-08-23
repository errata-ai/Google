> **NOTE**: This project is neither maintained nor endorsed by Google.

This repository contains a [Vale-compatible](https://github.com/errata-ai/vale) implementation of the [*Google Developer Documentation Style Guide*](https://developers.google.com/style/) ([CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)).

The goal is to showcase how to build and maintain a full-featured style guide for Vale, including many examples of using [extension points](https://errata-ai.github.io/vale/styles/#extension-points) and a test suite using [Cucumber](https://cucumber.io/), [`yamllint`](https://github.com/adrienverge/yamllint), and [Travis CI](https://travis-ci.org/).

[![Build Status](https://travis-ci.org/errata-ai/Google.svg?branch=master)](https://travis-ci.org/errata-ai/Google) ![Vale version](https://img.shields.io/badge/vale-%3E%3D%20v1.0.0-blue.svg) ![license](https://img.shields.io/github/license/mashape/apistatus.svg)

## Getting Started

> :exclamation: Google requires Vale >= **1.0.0**. :exclamation:

Download the [latest release](https://github.com/errata-ai/Google/releases), copy the "Google" directory to your `StylesPath`, and include it in your configuration file:

```ini
# This goes in a file named either `.vale.ini` or `_vale.ini`.
StylesPath = path/to/some/directory
MinAlertLevel = warning # suggestion, warning or error

# Only Markdown and .txt files; change to whatever you're using.
[*.{md,txt}]
# List of styles to load.
BasedOnStyles = Google
```

See [Usage](https://github.com/errata-ai/vale/#usage) for more information.

## Repository Structure

<dl>
  <dt><a href="https://github.com/errata-ai/Google/tree/master/Google"><code>/Google</code></a></dt>
  <dd>The <a href="http://yaml.org/">YAML</a>-based rule implementations that make up our style.</dd>

  <dt><a href="https://github.com/errata-ai/Google/tree/master/fixtures"><code>/fixtures</code></a></dt>
  <dd>The individual unit tests. Each directory should be named after a rule found in <code>/Google</code> and include its own <code>.vale.ini</code> file that isolates its target rule.</dd>

  <dt><a href="https://github.com/errata-ai/Google/tree/master/features"><code>/features</code></a></dt>
  <dd>The <a href="https://docs.cucumber.io/cucumber/step-definitions/">Cucumber Step Definitions</a> we use to test our fixtures. Essentially, we use the <a href="https://github.com/cucumber/aruba">aruba</a> framework to test Vale's output after running it on each of our fixture directories.</dd>
</dl>
