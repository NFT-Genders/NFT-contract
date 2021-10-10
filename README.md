<div align="center" id="top"> 
  <img src="cat text.png" alt="Innopolis" />

  &#xa0;

  <!-- <a href="https://innopolis.netlify.app">Demo</a> -->
</div>

<h1 align="center">GenderCats Smart Contract</h1>

<p align="center">
  <img alt="Github top language" src="https://img.shields.io/github/languages/top/NFT-Genders/NFT-contract?color=56BEB8">

  <img alt="Github language count" src="https://img.shields.io/github/languages/count/NFT-Genders/NFT-contract?color=56BEB8">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/NFT-Genders/NFT-contract?color=56BEB8">

  <img alt="License" src="https://img.shields.io/github/license/NFT-Genders/NFT-contract?color=56BEB8">

  <!-- <img alt="Github issues" src="https://img.shields.io/github/issues/NFT-Genders/NFT-contract?color=56BEB8" /> -->

  <!-- <img alt="Github forks" src="https://img.shields.io/github/forks/NFT-Genders/NFT-contract?color=56BEB8" /> -->

  <!-- <img alt="Github stars" src="https://img.shields.io/github/stars/NFT-Genders/NFT-contract?color=56BEB8" /> -->
</p>

<!-- Status -->

<!-- <h4 align="center"> 
	🚧  Innopolis 🚀 Under construction...  🚧
</h4> 

<hr> -->

<p align="center">
  <a href="#dart-about">About</a> &#xa0; | &#xa0; 
  <a href="#sparkles-features">Features</a> &#xa0; | &#xa0;
  <a href="#rocket-technologies">Technologies</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-requirements">Requirements</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-starting">Starting</a> &#xa0; | &#xa0;
  <a href="#memo-license">License</a> &#xa0; | &#xa0;
  <a href="https://github.com/{{YOUR_GITHUB_USERNAME}}" target="_blank">Author</a>
</p>

<br>

## :dart: About ##

This repository stores the code of Smart Contract that used by platform GenderCats to manage with NFT tokens in ETH blockchain.
GenderCats is the platform that store the NFT related to digital version of different genders. By this project we want to draw attention to the problem of gender discrimination and infringement of the rights of minorities

## :sparkles: Features ##

:heavy_check_mark: function to buy tokens with ETH wallet;\
:heavy_check_mark: secure ownership of our NFT;\
:heavy_check_mark: put the NFT up for sale;\
:heavy_check_mark: transfer NFT between Eth wallets;\
:heavy_check_mark: take NFT of from sale;

## :rocket: Technologies ##

The following tools were used in this project:

- [JavaScript](https://ru.wikipedia.org/wiki/JavaScript)
- [Solidity](https://ru.wikipedia.org/wiki/Solidity)


## :white_check_mark: Requirements ##

Before starting :checkered_flag:, you need to have [Git](https://git-scm.com) and [JavaScript](https://exercism.org/docs/tracks/javascript/installation) installed.

## :checkered_flag: Starting ##

Before the start working with a project make sure that you have following:

- Save your wallet mnemonic from [MetaMask](https://metamask.zendesk.com/hc/en-us/articles/360015290032-How-to-reveal-your-Secret-Recovery-Phrase)
- Get some [test ethereum](https://faucet.ropsten.be/)


### :checkered_flag: Clonning project ###
```bash
# Clone this project
$ git clone https://github.com/NFT-Genders/NFT-contract.git

# Access
$ cd NFT-contract

# Setting up the smart contract framework
$ npm install -g truffle
```

### :checkered_flag: Setting up Truffle ###
Inside the folder with clonned code, do following:
```bash
# Init the truffle project
truffle init

# Install HDWalletProvider
npm install --save truffle-hdwallet-provider
```

### :checkered_flag: Finally Deploy the contract ###
```bash
truffle deploy --network ropsten
```

## :memo: License ##

This project is under license from MIT. For more details, see the [LICENSE](LICENSE.md) file.


Made with :heart: by <a href="https://github.com/NFT-Genders" target="_blank">NFT-Genders Team</a>

&#xa0;

<a href="#top">Back to top</a>
