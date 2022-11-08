<h1 align="center">
  𝑚 + 🚀
  <br>Spaceship Maven<br>
</h1>

<h4 align="center">
  <a href="https://maven.apache.org/" target="_blank">Maven</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/spaceship-prompt/spaceship-maven/releases">
    <img src="https://img.shields.io/github/v/release/spaceship-prompt/spaceship-maven.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/spaceship-prompt/spaceship-maven/actions">
    <img src="https://img.shields.io/github/workflow/status/spaceship-prompt/spaceship-maven/ci?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>

  <a href="https://twitter.com/SpaceshipPrompt">
    <img src="https://img.shields.io/badge/twitter-%40SpaceshipPrompt-00ACEE.svg?style=flat-square"
      alt="Spaceship Twitter" />
  </a>

  <a href="https://discord.gg/NTQWz8Dyt9">
    <img
      src="https://img.shields.io/discord/859409950999707668?label=discord&logoColor=white&style=flat-square"
      alt="Chat on Discord"
    />
  </a>
</p>

Current Maven version, through `mvn` or `mvnw` (`𝑚`).

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/spaceship-prompt/spaceship-maven.git $ZSH_CUSTOM/plugins/spaceship-maven
```

Include `spaceship-maven` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-maven)
```

### [zplug]

```zsh
zplug "spaceship-prompt/spaceship-maven"
```

### [antigen]

```zsh
antigen bundle "spaceship-prompt/spaceship-maven"
```

### [antibody]

```zsh
antibody bundle "spaceship-prompt/spaceship-maven"
```

### [zinit]

```zsh
zinit light "spaceship-prompt/spaceship-maven"
```

### [zgen]

```zsh
zgen load "spaceship-prompt/spaceship-maven"
```

### [sheldon]

```toml
[plugins.spaceship-maven]
github = "spaceship-prompt/spaceship-maven"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-maven`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/spaceship-prompt/spaceship-maven.git "$HOME/.zsh/spaceship-maven"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-section/spaceship-maven.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Maven section in the prompt:

```zsh
spaceship add maven
```

## Options

Shows current maven version only if current working directory is within Maven wrapper or `mvn` exists available.

| Variable                              |              Default               | Meaning                                        |
| :------------------------------------ | :--------------------------------: | ---------------------------------------------- |
| `SPACESHIP_MAVEN_SHOW`                |               `true`               | Current Maven section                          |
| `SPACESHIP_MAVEN_PREFIX`              | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Prefix before Maven section                    |
| `SPACESHIP_MAVEN_SUFFIX`              | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after Maven section                     |
| `SPACESHIP_MAVEN_SYMBOL`              |                `𝑚·`                | Character to be shown before Maven section     |
| `SPACESHIP_MAVEN_DEFAULT_VERSION`     |                ` `                 | Maven version to be treated as default         |
| `SPACESHIP_MAVEN_COLOR`               |              `yellow`              | Color of Maven section                         |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional commits](https://www.conventionalcommits.org/), since this project adheres to [semver](https://semver.org/) and is automatically released via [semantic-release](https://github.com/semantic-release/semantic-release).

## License

MIT © [Denys Dovhan](http://yourwebsite.com) and Sergey Shatunov

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
