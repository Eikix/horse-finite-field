# horse-finite-field: a huff beginner's u64 finite field library

[![ci](https://github.com/huff-language/huff-project-template/actions/workflows/ci.yaml/badge.svg)](https://github.com/huff-language/huff-project-template/actions/workflows/ci.yaml) ![license](https://img.shields.io/github/license/huff-language/huff-project-template.svg) ![solidity](https://img.shields.io/badge/solidity-^0.8.15-lightgrey)

<img width="150" height="150" src="./assets/blueprint.png">

## Requirements

The following will need to be installed in order to use this template. Please follow the links and instructions.

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you've done it right if you can run `git --version`
- [Foundry / Foundryup](https://github.com/gakonst/foundry)
  - This will install `forge`, `cast`, and `anvil`
  - You can test you've installed them right by running `forge --version` and get an output like: `forge 0.2.0 (92f8951 2022-08-06T00:09:32.96582Z)`
  - To get the latest of each, just run `foundryup`
- [Huff Compiler](https://docs.huff.sh/get-started/installing/)
  - You'll know you've done it right if you can run `huffc --version` and get an output like: `huffc 0.3.0`

## Quickstart

1. Clone this repo or use template

   Click "Use this template" on [GitHub](https://github.com/huff-language/huff-project-template) to create a new repository with this repo as the initial state.
   Or run:

   ```shell
    git clone https://github.com/huff-language/huff-project-template
    cd huff-project-template
   ```

1. Install dependencies
   Once you've cloned and entered into your repository, you need to install the necessary dependencies. In order to do so, simply run:

   ```shell
   forge install
   ```

1. Build & Test

   To build and test your contracts, you can run:

   ```shell
   forge build
   forge test
   ```

For more information on how to use Foundry, check out the [Foundry Github Repository](https://github.com/foundry-rs/foundry/tree/master/forge) and the [foundry-huff library repository](https://github.com/huff-language/foundry-huff).

## Blueprint

```ml
lib
├─ forge-std — https://github.com/foundry-rs/forge-std
├─ foundry-huff — https://github.com/huff-language/foundry-huff
scripts
├─ Deploy.s.sol — Deployment Script
src
├─ HorseField — A Simple Finite Field Contract in Huff
test
└─ HorseField.t — HorseFieldTests
```

## License

MIT License

## Acknowledgements

- All of the people that made Huff possible: Thank you 🙏👑, it's been a lot of fun.
- [forge-template](https://github.com/foundry-rs/forge-template)
- [femplate](https://github.com/abigger87/femplate)
- [Lambdaworks](https://github.com/lambdaclass/lambdaworks/blob/main/math/src/field/fields/u64_prime_field.rs), by Lambdaclass

## Disclaimer

_These smart contracts are being provided as is. No guarantee, representation or warranty is being made, express or implied, as to the safety or correctness of the user interface or the smart contracts. They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions, loss of transmitted information or loss of funds. The creators are not liable for any of the foregoing. Users should proceed with caution and use at their own risk._
