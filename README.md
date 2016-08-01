# Yo when ready

## About
**YO!**

Get yo-push-notifications on your mobile device when a command finished so you can grab a coffee and sit back while your code compiles.

Example:
```sh
$ ywr ping -c 5 8.8.8.8
```

## Installation
### What you need
  + [A yo account](http://justyo.co)
  + The yo app (Android, iOS, etc.)
  + Linux or Mac OS X
  + [Python 2.7+ or 3](http://python.org/downloads/)
  + [git](http://git-scm-com) (optional)

#### Set Up
```sh
$ git clone https://github.com/Jonas-Drotleff/yowhenready.git ywr
```

or just download the repo manually

Navigate into the directory and execute the _install.sh_ script:

```sh
$ cd ywr
$ . install.sh
```

Ywr will now install. Accept with `y`. You will be asked to insert your username.

### After installation
If you want to remove the installer you can use the following command:
```sh
$ cd .. && rm -rf ywr
```

#### Uninstall
Just run the `uninstall.sh` script. You may need to do this as su.
Accept with y and the `~/.ywr` directory will be removed. You can remove the line under '#ywr' in your ~/.bash_profile file.

## Usage
Use the command `ywr` in the terminal in connection with any other command as you may be used to with the `sudo` command.

Example:
```sh
$ ywr ping -c 5 www.google.com
```

ywr works with any command.

| Command        | Description        |
| -------------- | ------------------ |
| `ywr -c`        | change username    |
| `ywr -t`        | test configuration |

### IDE integration
JetBrains Intelij IDEA/Android Studio:
  1. Go to `Run` > `Edit Configurations...`
  2. Under 'Before launch', press the `+`
  3. Select 'Run External tool'
  4. `+`
  5. Give it a name (such as 'yo when ready') and optionally add a description
  6. Insert `ywr` in 'Program'
  7. Insert `-t` in 'Parameters'
  8. Leave everything default and press `OK`

## License
Copyright 2016 Jonas Drotleff

  Licensed under the Apache License, Version 2.0 (the "License");
  You may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.


### Notice

This program is using the requests python API (python-requests.org) by Kenneth Reitz.

Yo is owned and operated by Life Before Us, LLC
