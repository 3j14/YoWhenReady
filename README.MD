# Yo when ready

## About
**YO!**

This is a simple and easy-to-use tool to get yo-push-notifications on your mobile device when a command finished so you can grap a coffee and sit back while your code compiles.
All you do is:
```sh
$ yo ping -c 5 8.8.8.8
```
You can replace *ping -c 5 8.8.8.8* with any other command.

This code was written in a tty with vim while arch was isntalling. Because who needs an IDE?

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
Yo will now install.

```sh
$ cd .. && rm -r yo
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

You can add the script to the build process of your favourite IDE to get notified when you code is compiled/build.


## Notice

This programm is using the requests python API (python-requests.org) by Kenneth Reitz.

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
