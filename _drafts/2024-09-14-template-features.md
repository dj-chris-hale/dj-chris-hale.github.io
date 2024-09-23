---
layout: post
title: "NEW Template Features"
image: "http://placehold.co/900x300/dddddd/ffffff/?text=Features"
date:  "2024-09-14 17:11:00 +0900"
categories: [jekyll]
author: Pete
tags: [jekyll, features, template]
---

New Features in our latest masterpiece template

### Features

* [X] Integrated [Lunrjs Search](https://lunrjs.com)
* [X] Bootstrap 5.3
* [X] Bootstrap Icons
* [X] Responsive design
* [X] Blog-Ready
* [X] Cloud Tags
* [X] Git Build Info
* [X] Nav Display Page option
* [X] Page Header Images
* [X] Header Image Alt Text
* [X] Sidebar Headers For Page Navigation
* [X] Show Page Top Link Option
* [X] Exclude Page From Search Option
* [X] Git Hooks with Installation
* [X] Site Map Generation
* [X] Formspree Contact Form

### Site Level Parameters

Site Wide Parameters in the `_config.yml` file.

```yaml
search_enabled: true or false # Turn on or off the search form
git_build_data_color: '#eee' # Color of the build data in the footer
google_analytics: true or false # Turn on/off Google Analytics 
google_tag_manager: 'GTM-XXXXXXX' # Your Google Tag Manager Id
sidebar_headers: true or false # Site Wide Sidebar Headers
show_top_link: true or false # Show The 'Back To Top' Link in Sidebar
formspree_id: 'your_formspree_id' # Contact Page Formspree Id
```

### Template Page Parameters

Page-Level `frontmatter` Parameters:

```yaml
layout: home,default,page,post, or tags # Layout of the page
title: The Page Title # Title of the page
nav_display: true or false # Show this page in the navigation?
image: "/path or https://url.png" # Path To Your Page Header Image
image_alt: "Alt text for the image" # Image Alt Text
header_title: "Header Title" # Display header text
exclude_search: true # Exclude this page from search results?
sidebar_headers: true or false # Display the sidebar headers on this page
show_top_link: true or false # Display the 'Back To Top' on this page
permalink: /path/to/page/ # Same as jekyll's permalink
```

### Install Git Hook

Setup Git Hooks with the install script

```bash
$ install_git_hooks.sh
```

### Tag Cloud 

The [tag cloud]({{ '/tags/' | relative_url}}) is generated from the keyword tags in your _posts files. Note: Tags all should be lowercased!!!

Example: 

```yaml
tags: [jekyll, welcome, test]
```

They will be automagically genrated when the git pre-commit hook is run.

You can manually run the following command to generate the tag cloud files

```bash
$ ./_posts_tags/_gen_posts_tags_files.sh
```

You can see the tags that will be generated in the [`_site_tags_missing.txt`]({{ '/_site_tags_missing.txt' | relative_url }}) file.

### Search 

Enabled in the `_config.yml` file with the `search_enabled: true` parameter.

Search is powered by the Lunr.js library. The index is generated autmatically in the [`/assets/js/documents.js`]({{ '/assets/js/documents.js' | relative_url }}) file.


