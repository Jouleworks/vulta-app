# Vulta.app

A federation-like art hosting platform.

## The Idea
Art hosting websites are far in a way places with rules that can change at any instant, depending on the laws and rules of the people who run the site. With the rise in popularity of federated social media like Mastodon and to a lesser extent Bluesky, this is an experiment to create a standalone, self-hosted art gallery that can be hooked up to the central gallery at Vulta.art

## How does it work?

Right now, Vulta.app is just a concept. As it's fleshed out, the features we hope to deliever are:

* The ability for Artists, Art Commissioners, or anyone to run this service at a cloud provider (AWS, Google Cloud, Azure) at very little to no cost, and to provide step-by-step instructions to make it easy to deploy.
* Curate and host your own Art Gallery standalone to any other program or product. It's yours, it's free, and it's your responsibility and your rules.
* Link up your Vulta.app Instance to your Vulta.art account in a form of pseudo-federation so you can broadcast your art to the world.
* Don't want to link up to Vulta.art? Eventually we want to allow anyone to run their own third party "mixers" with their own moderation and their own rules, all at the click of a few buttons.

## The tech stack
* Django 5 (Python 3.12)
* Postgres/Mysql/Sqlite
* Angular 17 (Node 20.x)
* Nginx
* Supervisord

