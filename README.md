# Ctop

## Description

Top-like interface for container metrics [https://ctop.sh](https://ctop.sh)

## Features

* Install and uninstall via Chocolatey
* Supports 64-bit version

## Changelog

### 2022-03-30 Build 0.7.7

* version 0.7.7

### 2021-06-28 Build 0.7.6

* version 0.7.6

### 2020-11-22 Build 0.7.5

* version 0.7.5

### 2020-10-27 Build 0.7.4

* version 0.7.4
* 64-bit version - [https://www.virustotal.com/gui/file/a0560954705484c07a421d414b140bcd08be8bd71209523c7e0921eb702c8827/detection](https://www.virustotal.com/gui/file/a0560954705484c07a421d414b140bcd08be8bd71209523c7e0921eb702c8827/detection)

### 2019-05-29 Build 0.7.2

* version 0.7.2
* 64-bit version - [https://www.virustotal.com/#/file/552c44852e29891662891e38a290d058a168d995e3cc8f66effe147ca0636c8e/detection](https://www.virustotal.com/#/file/552c44852e29891662891e38a290d058a168d995e3cc8f66effe147ca0636c8e/detection)

## Usage

### Direct

```cmd
choco install ctop -y
```

### YAML (Foreman, puppetlabs/chocolatey module)

```yaml
ctop:
  ensure: latest
  provider: chocolatey
```

or

```yaml
ctop:
  ensure: latest
```
