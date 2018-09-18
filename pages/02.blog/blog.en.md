---
title: Blog
body_classes: 'header-image fullwidth'
admin:
    children_display_order: collection
blog_url: blog
content:
    items:
        - '@self.children'
    limit: 4
    order:
        by: date
        dir: desc
    pagination: true
    url_taxonomy_filters: true
sitemap:
    changefreq: monthly
    priority: 1.03
feed:
    description: 'Blog news'
    limit: 10
pagination: true
---

