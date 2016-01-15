# Yo when ready

## About
**YO!**
This is a simple and easy-to-use tool to get yo-push-notifications on your mobile device when a command finnished so you can grap a coffee and sit back while your code compiles.
All you do is:
```sh
$ yo ping -c 5 8.8.8.8
```
You can *replace ping -c 5 8.8.8.8* with any other command.

## Installation

### What you need
  + A yo account (justyo.co)
  + The yo app (Android, iOS, etc.)
  + Linux or Mac OS X
  + Python 3 or higher (python.org/downloads/)
  + git (optional)

#### Set Up

```sh
$ git clone https://github.com/Jonas-Drotleff/yo.git
```
or just download the repo as a ZIP-File

```sh
$ cd yo
$ . install.sh
```
Yo will now be installed.

```sh
$ rm -r yo
```
To remove the installer files

Now you need to go to dev.justyo.co and sign in with your normal account.
Select *+ NEW ACCOUNT* and create a new account (you need it to send yo the yo notifications when you command finnished). Select any name and press *create* at the bottom of the page.
View your API-Key and copy it.
Open a new terminal and type

```sh
$ yo -c
```
insert the API-Key and press enter.
Now just insert the username that should recieve a push-notification and press enter again.

You can test your configuration with
```sh
$ yo -t
```

## License
Copyright 2016 Jonas Drotleff

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
