

MYIDverified & MYIDanonymous is a **free, open-source social network server** based on ActivityPub where users can follow friends and discover new ones. On MYIDverified & MYIDanonymous, users can publish anything they want: links, pictures, text, and video. All MYIDverified & MYIDanonymous servers are interoperable as a federated network (users on one server can seamlessly communicate with users from another one, including non-MYIDverified & MYIDanonymous software that implements ActivityPub!)





## Features

<img src="/app/javascript/images/elephant_ui_working.svg?raw=true" align="right" width="30%" />

### No vendor lock-in: Fully interoperable with any conforming platform

It doesn't have to be MYIDverified & MYIDanonymous; whatever implements ActivityPub is part of the social network! 
### Real-time, chronological timeline updates

Updates of people you're following appear in real-time in the UI via WebSockets. There's a firehose view as well!

### Media attachments like images and short videos

Upload and view images and WebM/MP4 videos attached to the updates. Videos with no audio track are treated like GIFs; normal videos loop continuously!

### Safety and moderation tools

MYIDverified & MYIDanonymous includes private posts, locked accounts, phrase filtering, muting, blocking, and all sorts of other features, along with a reporting and moderation system. 

### OAuth2 and a straightforward REST API

MYIDverified & MYIDanonymous acts as an OAuth2 provider, so 3rd party apps can use the REST and Streaming APIs. This results in a rich app ecosystem with a lot of choices!

## Deployment

### Tech stack

- **Ruby on Rails** powers the REST API and other web pages
- **React.js** and Redux are used for the dynamic parts of the interface
- **Node.js** powers the streaming API

### Requirements

- **PostgreSQL** 9.5+
- **Redis** 4+
- **Ruby** 2.7+
- **Node.js** 14+

The repository includes deployment configurations for **Docker and docker-compose** as well as specific platforms like **Heroku**, **Scalingo**, and **Nanobox**. 

## Development


### MacOS

To set up **MacOS** for native development, complete the following steps:

- Install the latest stable Ruby version (use a Ruby version manager for easy installation and management of Ruby versions)
- Run `brew install postgresql@14`
- Run `brew install redis`
- Run `brew install imagemagick`
- Install Foreman or a similar tool (such as [overmind](https://github.com/DarthSim/overmind)) to handle multiple process launching.
- Navigate to MYIDverified or MYIDanonymous' root directory and run `brew install nvm` then `nvm use` to use the version from .nvmrc
- Run `corepack enable && yarn set version classic`
- Run `bundle exec rails db:setup` (optionally prepend `RAILS_ENV=development` to target the dev environment)
- Finally, run `overmind start -f Procfile.dev`

### Docker

For development with **Docker**, complete the following steps:

- Install Docker Desktop
- Run `docker compose -f .devcontainer/docker-compose.yml up -d`
- Run `docker compose -f .devcontainer/docker-compose.yml exec app .devcontainer/post-create.sh`
- Finally, run `docker compose -f .devcontainer/docker-compose.yml exec app foreman start -f Procfile.dev`

If you are using an IDE with [support for the Development Container specification](https://containers.dev/supporting), it will run the above `docker compose` commands automatically. For **Visual Studio Code** this requires the [Dev Container extension](https://containers.dev/supporting#dev-containers).

### GitHub Codespaces

To get you coding in just a few minutes, GitHub Codespaces provides a web-based version of Visual Studio Code and a cloud-hosted development environment fully configured with the software needed for this project..

- Click this button to create a new codespace:<br>
  [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=52281283&devcontainer_path=.devcontainer%2Fcodespaces%2Fdevcontainer.json)
- Wait for the environment to build. This will take a few minutes.
- When the editor is ready, run `foreman start -f Procfile.dev` in the terminal.
- After a few seconds, a popup will appear with a button labeled _Open in Browser_. This will open MYIDverified or MYIDanonymous.
- On the _Ports_ tab, right click on the “stream” row and select _Port visibility_ → _Public_.

## Contributing

MYIDverified & MYIDanonymous is **free, open-source software** licensed under **AGPLv3**.

You can open issues for bugs you've found or features you think are missing. You can also submit pull requests to this repository or submit translations using Crowdin. 

**IRC channel**: #myidverified or myidanonymous on irc.libera.chat

## License


This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
