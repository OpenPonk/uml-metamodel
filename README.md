# OpenPonk: UML 2.5 Metamodel

[![Nightly](https://github.com/OpenPonk/uml-metamodel/actions/workflows/nightly.yml/badge.svg)](https://github.com/OpenPonk/uml-metamodel/actions/workflows/nightly.yml) [![Coverage Status](https://coveralls.io/repos/github/OpenPonk/uml-metamodel/badge.svg?branch=master)](https://coveralls.io/github/OpenPonk/uml-metamodel?branch=master)

OMG UML 2.5 metamodel implementation in Pharo (`OpenPonk-UML-Metamodel` and its reflection meta-layer `OpenPonk-UML-Meta`).

> **Note:** `OpenPonk-UML-Metamodel` consists of generated code produced by [`uml-bootstrap-generator`](https://github.com/OpenPonk/uml-bootstrap-generator) from the OMG UML 2.5 XMI specifications. Do not edit generated metamodel classes manually without updating the generator.

## Installation

See [openponk.org/#direct-installation](https://openponk.org/#direct-installation) for the supported Pharo version.

```smalltalk
Metacello new
	baseline: 'OpenPonkUMLMetamodel';
	repository: 'github://OpenPonk/uml-metamodel';
	load.
```

## Documentation

Part of the [OpenPonk](https://openponk.org) platform. For architecture, the repository catalog, and contributing guidelines, see [`OpenPonk/.github`](https://github.com/OpenPonk/.github/blob/main/profile/README.md).
