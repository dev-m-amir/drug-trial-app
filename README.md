# Drug Trial Web Application
This Ruby on Rails web application is designed to collect volunteer information for a phase 3 trial of the drug Barfemfup.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Cron Job Setup](#cron-job-setup)

## Prerequisites

The project has following dependencies

- Ruby (version 3.1.2)
- Ruby on Rails (version 7.0.3)
- PostgreSQL
- Bundler gem (for managing dependencies)
- sprockets (jsbundling and cssbundling) for asset compilation
- whenever for cron job management
- phonelib for phone number validation
- rubocop for style guide
- etc. (please refer to the Gemfile for more information)

## Installation

1. Install gem dependencies:
   ```bash
   bundle install
   ```
2. Set up the database:
    ```bash
    rails db:setup
    ```

## Usage


1. Start the Rails server:
    ``` bash
    rails server
    ```
2. Open your web browser and navigate to http://localhost:3000 to access the volunteer registration form.

3. Volunteers can submit their information, which will be saved to the local database.

4. A daily cron job will run to upload volunteer data to the hospital's database. Ensure the cron job is set up correctly (see [Cron Job Setup](#cron-job-setup)).

## Cron Job Setup
To set up the daily cron job for data upload:

1. Edit the config/schedule.rb file to specify the timing for the cron job:
    ```bash
    every 1.day, at: '12:00 am' do
      command '/bin/bash ../scripts/batch_upload.sh'
    end
    ```
2. Update your crontab by running:
    ```bash
    whenever --update-crontab
    ```
