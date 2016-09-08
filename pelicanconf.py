#!/usr/bin/env python
from __future__ import unicode_literals
import os

AUTHOR = u'Gerard Braad <me@gbraad.nl>'
SITENAME = u"Gerard Braad's blog"
SITEURL = ''

PATH = 'content'

TIMEZONE = 'Asia/Shanghai'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = ()

# Social widget
SOCIAL = ()

DEFAULT_PAGINATION = 5

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True

THEME = u'gbraad'

PLUGIN_PATHS = ['plugins']
PLUGINS = [u"disqus_static"]

# Disqus
DISQUS_SITENAME = u'gbraad-blog'
DISQUS_PUBLIC_KEY = os.environ['DISQUS_PUBLIC_KEY']
DISQUS_SECRET_KEY = os.environ['DISQUS_SECRET_KEY']
