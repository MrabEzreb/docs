<div id="content-wrap">
  <div id="content" class="wrapper">
    <div id="content-inner">
      <article class="article-container" itemscope itemtype="http://schema.org/Article">
        <div class="article-inner">
          <div class="article">
            <div class="inner">
              <header class="article-header">
                <h1 class="article-title" itemprop="name" id="top">{{ page.title }}</h1>
                <a href="{{ raw_link(page.source) }}" class="article-edit-link" title="{{ __('page.improve') }}"><i class="fa fa-pencil"></i></a>
              </header>
              <div class="article-content" itemprop="articleBody">
                {{ page_anchor(page.content) }}
              </div>
              <footer class="article-footer">
                <time class="article-footer-updated" datetime="{{ date_xml(page.updated) }}" itemprop="dateModified">{{ __('page.last_updated', date(page.updated)) }}</time>
                {{ page_nav() }}
              </footer>
            </div>
          </div>
          <aside id="article-toc" role="navigation">
            {% if page.title == 'Overview' %}
              <div id="twitter-feed">
                <a class="twitter-timeline" data-width="220" data-height="600" href="https://twitter.com/ScreepsGame">Tweets by ScreepsGame</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
              </div>
            {% else %}
              <div id="article-toc-inner">
                <strong class="sidebar-title">{{ __('page.contents') }}</strong>
                {{ toc(page.content, {list_number: false}) }}
                <a href="#" id="article-toc-top">{{ __('page.back_to_top') }}</a>
              </div>
            {% endif %}
          </aside>
        </div>
      </article>
      {{ partial('partial/sidebar') }}
    </div>
  </div>
</div>
