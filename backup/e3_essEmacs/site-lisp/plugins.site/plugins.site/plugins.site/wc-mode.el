


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=10">
        <title>wc-mode/wc-mode.el at master · bnbeckwith/wc-mode · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe120-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (0e75de19f8) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="823682F5:6366:38C1B:5281CBD8" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="+tAwBs1ABV2bapErCkTLcvFWbCwdfRBHjgHzgOjLTpg=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-804556dba6658262abda18880c76c8b30304dcb3.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-e365895b944e988f6be11eb0751cab2b013d43c4.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-bca527bb59d94c16d6bf2a759779d7953fa41e76.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-02bcd99101c934d92723526f7e040feda64bb46d.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="47a4beead08e67b00378dff0b71f68f9">

        <link data-pjax-transient rel='permalink' href='/bnbeckwith/wc-mode/blob/d575f9a9266c852cb83f742fec6ec6bc146929a4/wc-mode.el'>
  <meta property="og:title" content="wc-mode"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/bnbeckwith/wc-mode"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="wc-mode - Wordcount minor mode for Emacs"/>

  <meta name="description" content="wc-mode - Wordcount minor mode for Emacs" />

  <meta content="164196" name="octolytics-dimension-user_id" /><meta content="bnbeckwith" name="octolytics-dimension-user_login" /><meta content="732635" name="octolytics-dimension-repository_id" /><meta content="bnbeckwith/wc-mode" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="732635" name="octolytics-dimension-repository_network_root_id" /><meta content="bnbeckwith/wc-mode" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/bnbeckwith/wc-mode/commits/master.atom" rel="alternate" title="Recent Commits to wc-mode:master" type="application/atom+xml" />

  </head>


  <body class="logged_out  env-production linux vis-public  page-blob">
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Fbnbeckwith%2Fwc-mode%2Fblob%2Fmaster%2Fwc-mode.el">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey=" s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="bnbeckwith/wc-mode"
      data-branch="master"
      data-sha="384e48925a3064b9364c9c4c727d78d389831d3b"
  >

    <input type="hidden" name="nwo" value="bnbeckwith/wc-mode" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>


      


          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


  <li>
    <a href="/login?return_to=%2Fbnbeckwith%2Fwc-mode"
    class="minibutton with-count js-toggler-target star-button tooltipped upwards"
    title="You must be signed in to use this feature" rel="nofollow">
    <span class="octicon octicon-star"></span>Star
  </a>

    <a class="social-count js-social-count" href="/bnbeckwith/wc-mode/stargazers">
      11
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Fbnbeckwith%2Fwc-mode"
        class="minibutton with-count js-toggler-target fork-button tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/bnbeckwith/wc-mode/network" class="social-count">
        3
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/bnbeckwith" class="url fn" itemprop="url" rel="author"><span itemprop="title">bnbeckwith</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/bnbeckwith/wc-mode" class="js-current-repository js-repo-home-link">wc-mode</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container ">

        <div class="repository-sidebar">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped leftwards" title="Code">
        <a href="/bnbeckwith/wc-mode" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /bnbeckwith/wc-mode">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/bnbeckwith/wc-mode/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /bnbeckwith/wc-mode/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/bnbeckwith/wc-mode/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /bnbeckwith/wc-mode/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/bnbeckwith/wc-mode/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /bnbeckwith/wc-mode/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/bnbeckwith/wc-mode/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /bnbeckwith/wc-mode/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/bnbeckwith/wc-mode/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /bnbeckwith/wc-mode/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/bnbeckwith/wc-mode.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/bnbeckwith/wc-mode.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/bnbeckwith/wc-mode" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/bnbeckwith/wc-mode" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="octicon help tooltipped upwards" title="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>



              <a href="/bnbeckwith/wc-mode/archive/master.zip"
                 class="minibutton sidebar-button"
                 title="Download this repository as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:264c877c1ec76dcd6a58db110e1bf2fd -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/bnbeckwith/wc-mode/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bnbeckwith/wc-mode/blob/master/wc-mode.el"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/bnbeckwith/wc-mode/tree/v1.0/wc-mode.el"
                 data-name="v1.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="v1.0">v1.0</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/bnbeckwith/wc-mode" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">wc-mode</span></a></span></span><span class="separator"> / </span><strong class="final-path">wc-mode.el</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="wc-mode.el" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>



  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://1.gravatar.com/avatar/e23930590c1dbe22a7b60a6517464d58?d=https%3A%2F%2Fidenticons.github.com%2F9b784280afc36c74b271d8af5ec9e534.png&amp;r=x&amp;s=140" width="24" />
    <span class="author"><a href="/lightquake" rel="author">lightquake</a></span>
    <time class="js-relative-date" datetime="2013-03-24T22:31:18-07:00" title="2013-03-24 22:31:18">March 24, 2013</time>
    <div class="commit-title">
        <a href="/bnbeckwith/wc-mode/commit/164aea2d06cb9f58fb3cae3f70a6fffbcfd55a66" class="message" data-pjax="true" title="Add wc-reset function to &#39;reset&#39; counts.">Add wc-reset function to 'reset' counts.</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>4</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="bnbeckwith" href="/bnbeckwith/wc-mode/commits/master/wc-mode.el?author=bnbeckwith"><img height="20" src="https://2.gravatar.com/avatar/6cc56738bc7e963be0bbe859fd5c72a2?d=https%3A%2F%2Fidenticons.github.com%2Ff08f003a415c5b9b6f3bf40fcc77a59c.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="dato" href="/bnbeckwith/wc-mode/commits/master/wc-mode.el?author=dato"><img height="20" src="https://1.gravatar.com/avatar/e7387a2ec3ad44a1559f3efd513b85bc?d=https%3A%2F%2Fidenticons.github.com%2Fbf0552607a32015c010c166f9771efe9.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="tarsius" href="/bnbeckwith/wc-mode/commits/master/wc-mode.el?author=tarsius"><img height="20" src="https://1.gravatar.com/avatar/059a5820c6189aa2661f80f3abc62112?d=https%3A%2F%2Fidenticons.github.com%2F47faaa86a0f77d1d93bdc57e86cfd6c6.png&amp;r=x&amp;s=140" width="20" /></a>
    <a class="avatar tooltipped downwards" title="lightquake" href="/bnbeckwith/wc-mode/commits/master/wc-mode.el?author=lightquake"><img height="20" src="https://1.gravatar.com/avatar/e23930590c1dbe22a7b60a6517464d58?d=https%3A%2F%2Fidenticons.github.com%2F9b784280afc36c74b271d8af5ec9e534.png&amp;r=x&amp;s=140" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img height="24" src="https://2.gravatar.com/avatar/6cc56738bc7e963be0bbe859fd5c72a2?d=https%3A%2F%2Fidenticons.github.com%2Ff08f003a415c5b9b6f3bf40fcc77a59c.png&amp;r=x&amp;s=140" width="24" />
            <a href="/bnbeckwith">bnbeckwith</a>
          </li>
          <li class="facebox-user-list-item">
            <img height="24" src="https://1.gravatar.com/avatar/e7387a2ec3ad44a1559f3efd513b85bc?d=https%3A%2F%2Fidenticons.github.com%2Fbf0552607a32015c010c166f9771efe9.png&amp;r=x&amp;s=140" width="24" />
            <a href="/dato">dato</a>
          </li>
          <li class="facebox-user-list-item">
            <img height="24" src="https://1.gravatar.com/avatar/059a5820c6189aa2661f80f3abc62112?d=https%3A%2F%2Fidenticons.github.com%2F47faaa86a0f77d1d93bdc57e86cfd6c6.png&amp;r=x&amp;s=140" width="24" />
            <a href="/tarsius">tarsius</a>
          </li>
          <li class="facebox-user-list-item">
            <img height="24" src="https://1.gravatar.com/avatar/e23930590c1dbe22a7b60a6517464d58?d=https%3A%2F%2Fidenticons.github.com%2F9b784280afc36c74b271d8af5ec9e534.png&amp;r=x&amp;s=140" width="24" />
            <a href="/lightquake">lightquake</a>
          </li>
      </ul>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>317 lines (280 sloc)</span>
        <span>10.761 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled tooltipped leftwards" href="#"
                 title="You must be signed in to make or propose changes">Edit</a>
          <a href="/bnbeckwith/wc-mode/raw/master/wc-mode.el" class="button minibutton " id="raw-url">Raw</a>
            <a href="/bnbeckwith/wc-mode/blame/master/wc-mode.el" class="button minibutton ">Blame</a>
          <a href="/bnbeckwith/wc-mode/commits/master/wc-mode.el" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger disabled empty-icon tooltipped leftwards" href="#"
             title="You must be signed in and on a branch to make or propose changes">
          Delete
        </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-emacs-lisp js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">;;; wc-mode.el --- Running word count with goals (minor mode)</span></div><div class='line' id='LC2'><span class="c1">;;</span></div><div class='line' id='LC3'><span class="c1">;; Author: Benjamin Beckwith</span></div><div class='line' id='LC4'><span class="c1">;; Created: 2010-6-19</span></div><div class='line' id='LC5'><span class="c1">;; Version: 1.1</span></div><div class='line' id='LC6'><span class="c1">;; Last-Updated: 2010-6-19</span></div><div class='line' id='LC7'><span class="c1">;; URL: https://github.com/bnbeckwith/wc-mode</span></div><div class='line' id='LC8'><span class="c1">;; Keywords: </span></div><div class='line' id='LC9'><span class="c1">;; Compatability:</span></div><div class='line' id='LC10'><span class="c1">;;</span></div><div class='line' id='LC11'><span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC12'><span class="c1">;;</span></div><div class='line' id='LC13'><span class="c1">;;; Commentary:</span></div><div class='line' id='LC14'><span class="c1">;;</span></div><div class='line' id='LC15'><span class="c1">;; Read the following for how to use the &#39;how-many&#39; function</span></div><div class='line' id='LC16'><span class="c1">;; http://www.neverfriday.com/sweetfriday/2008/06/emacs-tip-word-counting-with-a.html</span></div><div class='line' id='LC17'><span class="c1">;; The following site had a good idea on how to produce number of chars</span></div><div class='line' id='LC18'><span class="c1">;; http://xahlee.org/emacs/elisp_count-region.html</span></div><div class='line' id='LC19'><span class="c1">;; Inspired by http://750words.com</span></div><div class='line' id='LC20'><span class="c1">;;</span></div><div class='line' id='LC21'><span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC22'><span class="c1">;;</span></div><div class='line' id='LC23'><span class="c1">;;; Change Log:</span></div><div class='line' id='LC24'><span class="c1">;;</span></div><div class='line' id='LC25'><span class="c1">;; 1.1 Counting functions tied to buffer-local variables</span></div><div class='line' id='LC26'><span class="c1">;;     This allows customization of the counting methods</span></div><div class='line' id='LC27'><span class="c1">;; 1.0 Keystrokes for all goals added.</span></div><div class='line' id='LC28'><span class="c1">;;     Hooks variable added.</span></div><div class='line' id='LC29'><span class="c1">;;     In-code documentation updated.</span></div><div class='line' id='LC30'><span class="c1">;; 0.9 Added keymap for basic mode features/functions</span></div><div class='line' id='LC31'><span class="c1">;; 0.8 Added modeline format customization</span></div><div class='line' id='LC32'><span class="c1">;;     Added other customizations</span></div><div class='line' id='LC33'><span class="c1">;; 0.7 Added stats for lines and characters</span></div><div class='line' id='LC34'><span class="c1">;; 0.6 Mode line goal code added</span></div><div class='line' id='LC35'><span class="c1">;; 0.5 Initial version focused on word-count</span></div><div class='line' id='LC36'><span class="c1">;;</span></div><div class='line' id='LC37'><span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC38'><span class="c1">;;</span></div><div class='line' id='LC39'><span class="c1">;; This program is free software; you can redistribute it and/or</span></div><div class='line' id='LC40'><span class="c1">;; modify it under the terms of the GNU General Public License as</span></div><div class='line' id='LC41'><span class="c1">;; published by the Free Software Foundation; either version 3, or</span></div><div class='line' id='LC42'><span class="c1">;; (at your option) any later version.</span></div><div class='line' id='LC43'><span class="c1">;;</span></div><div class='line' id='LC44'><span class="c1">;; This program is distributed in the hope that it will be useful,</span></div><div class='line' id='LC45'><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></div><div class='line' id='LC46'><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU</span></div><div class='line' id='LC47'><span class="c1">;; General Public License for more details.</span></div><div class='line' id='LC48'><span class="c1">;;</span></div><div class='line' id='LC49'><span class="c1">;; You should have received a copy of the GNU General Public License</span></div><div class='line' id='LC50'><span class="c1">;; along with this program; see the file COPYING.  If not, write to</span></div><div class='line' id='LC51'><span class="c1">;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth</span></div><div class='line' id='LC52'><span class="c1">;; Floor, Boston, MA 02110-1301, USA.</span></div><div class='line' id='LC53'><span class="c1">;;</span></div><div class='line' id='LC54'><span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC55'><span class="c1">;;</span></div><div class='line' id='LC56'><span class="c1">;;; Code:</span></div><div class='line' id='LC57'><br/></div><div class='line' id='LC58'><span class="p">(</span><span class="nf">defgroup</span> <span class="nv">wc</span> <span class="nv">nil</span></div><div class='line' id='LC59'>&nbsp;&nbsp;<span class="s">&quot;Customization group for `wc-mode&#39;.&quot;</span></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;wp</span><span class="p">)</span></div><div class='line' id='LC61'><br/></div><div class='line' id='LC62'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">wc-modeline-format</span> <span class="s">&quot;WC[%W%w/%tw]&quot;</span></div><div class='line' id='LC63'>&nbsp;&nbsp;<span class="s">&quot;The format string for the modeline.</span></div><div class='line' id='LC64'><span class="s">The detailed information for this minor mode can be shown in many</span></div><div class='line' id='LC65'><span class="s">ways in the modeline. The formatting strings recognized in this</span></div><div class='line' id='LC66'><span class="s">format are as follows.</span></div><div class='line' id='LC67'><br/></div><div class='line' id='LC68'><span class="s">  %W  Original word count (before changes)</span></div><div class='line' id='LC69'><span class="s">  %L  Original line count</span></div><div class='line' id='LC70'><span class="s">  %C  Original character count</span></div><div class='line' id='LC71'><span class="s">  %w  Change in words</span></div><div class='line' id='LC72'><span class="s">  %l  Change in lines</span></div><div class='line' id='LC73'><span class="s">  %c  Change in characters</span></div><div class='line' id='LC74'><span class="s">  %gc Character change goal</span></div><div class='line' id='LC75'><span class="s">  %gl Line change goal</span></div><div class='line' id='LC76'><span class="s">  %gw Word change goal</span></div><div class='line' id='LC77'><span class="s">  %tw Total words in buffer</span></div><div class='line' id='LC78'><span class="s">  %tl Total lines in buffer</span></div><div class='line' id='LC79'><span class="s">  %tc Total characters in buffer</span></div><div class='line' id='LC80'><br/></div><div class='line' id='LC81'><span class="s">The default modeline, WC[%W%w/%tw], will display the original number</span></div><div class='line' id='LC82'><span class="s">of words followed by the change in words (delta), followed by the total</span></div><div class='line' id='LC83'><span class="s">number of words in the buffer. </span></div><div class='line' id='LC84'><span class="s">It will looks something like WC[742+360/1100] in the modeline.</span></div><div class='line' id='LC85'><span class="s">&quot;</span></div><div class='line' id='LC86'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;wc</span><span class="p">)</span></div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">wc-mode-hook</span> <span class="nv">nil</span></div><div class='line' id='LC89'>&nbsp;&nbsp;<span class="s">&quot;Hook to run when entering wc-mode.&quot;</span></div><div class='line' id='LC90'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;hook</span></div><div class='line' id='LC91'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;wc</span><span class="p">)</span></div><div class='line' id='LC92'><br/></div><div class='line' id='LC93'><span class="p">(</span><span class="nf">defface</span> <span class="nv">wc-goal-face</span></div><div class='line' id='LC94'>&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">((</span><span class="nf">t</span> <span class="p">(</span><span class="nf">:inherit</span> <span class="nv">highlight</span><span class="p">)))</span></div><div class='line' id='LC95'>&nbsp;&nbsp;<span class="s">&quot;Face for modeline when goal is reached&quot;</span></div><div class='line' id='LC96'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;wc</span><span class="p">)</span></div><div class='line' id='LC97'><br/></div><div class='line' id='LC98'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-mode-map</span> </div><div class='line' id='LC99'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nb">map </span><span class="p">(</span><span class="nf">make-sparse-keymap</span> <span class="s">&quot;Wordcount&quot;</span><span class="p">)))</span></div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c C-w w&quot;</span><span class="p">)</span> <span class="ss">&#39;wc-set-word-goal</span><span class="p">)</span></div><div class='line' id='LC101'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c C-w l&quot;</span><span class="p">)</span> <span class="ss">&#39;wc-set-line-goal</span><span class="p">)</span></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c C-w a&quot;</span><span class="p">)</span> <span class="ss">&#39;wc-set-char-goal</span><span class="p">)</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c C-w c&quot;</span><span class="p">)</span> <span class="ss">&#39;wc-count</span><span class="p">)</span></div><div class='line' id='LC104'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">map</span><span class="p">)</span></div><div class='line' id='LC105'>&nbsp;&nbsp;<span class="s">&quot;Keymap for wc-mode&quot;</span><span class="p">)</span></div><div class='line' id='LC106'><br/></div><div class='line' id='LC107'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-orig-words</span> <span class="nv">nil</span> <span class="s">&quot;Original count of words in the buffer&quot;</span><span class="p">)</span></div><div class='line' id='LC108'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-orig-lines</span> <span class="nv">nil</span> <span class="s">&quot;Original count of words in the buffer&quot;</span><span class="p">)</span></div><div class='line' id='LC109'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-orig-chars</span> <span class="nv">nil</span> <span class="s">&quot;Original count of words in the buffer&quot;</span><span class="p">)</span></div><div class='line' id='LC110'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;wc-orig-words</span><span class="p">)</span></div><div class='line' id='LC111'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;wc-orig-lines</span><span class="p">)</span></div><div class='line' id='LC112'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;wc-orig-chars</span><span class="p">)</span></div><div class='line' id='LC113'><br/></div><div class='line' id='LC114'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-words-delta</span> <span class="mi">0</span> <span class="s">&quot;Change in word count&quot;</span><span class="p">)</span></div><div class='line' id='LC115'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-lines-delta</span> <span class="mi">0</span> <span class="s">&quot;Change in line count&quot;</span><span class="p">)</span></div><div class='line' id='LC116'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-chars-delta</span> <span class="mi">0</span> <span class="s">&quot;Change in char count&quot;</span><span class="p">)</span></div><div class='line' id='LC117'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;wc-words-delta</span><span class="p">)</span></div><div class='line' id='LC118'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;wc-lines-delta</span><span class="p">)</span></div><div class='line' id='LC119'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;wc-chars-delta</span><span class="p">)</span></div><div class='line' id='LC120'><br/></div><div class='line' id='LC121'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-word-goal</span> <span class="nv">nil</span> <span class="s">&quot;Goal for number of words added&quot;</span><span class="p">)</span></div><div class='line' id='LC122'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-line-goal</span> <span class="nv">nil</span> <span class="s">&quot;Goal for number of lines added&quot;</span><span class="p">)</span></div><div class='line' id='LC123'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-char-goal</span> <span class="nv">nil</span> <span class="s">&quot;Goal for numger of chars added&quot;</span><span class="p">)</span></div><div class='line' id='LC124'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;wc-word-goal</span><span class="p">)</span></div><div class='line' id='LC125'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;wc-line-goal</span><span class="p">)</span></div><div class='line' id='LC126'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;wc-char-goal</span><span class="p">)</span></div><div class='line' id='LC127'><br/></div><div class='line' id='LC128'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-count-chars-function</span></div><div class='line' id='LC129'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">function</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">rstart</span> <span class="nv">rend</span><span class="p">)</span></div><div class='line' id='LC130'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;Count the characters specified by the region bounded by</span></div><div class='line' id='LC131'><span class="s">RSTART and REND.&quot;</span></div><div class='line' id='LC132'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">- </span><span class="nv">rend</span> <span class="nv">rstart</span><span class="p">))))</span></div><div class='line' id='LC133'><br/></div><div class='line' id='LC134'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-count-words-function</span></div><div class='line' id='LC135'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">function</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">rstart</span> <span class="nv">rend</span><span class="p">)</span></div><div class='line' id='LC136'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;Count the words specified by the region bounded by</span></div><div class='line' id='LC137'><span class="s">RSTART and REND.&quot;</span></div><div class='line' id='LC138'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">how-many</span> <span class="s">&quot;\\w+&quot;</span> <span class="nv">rstart</span> <span class="nv">rend</span><span class="p">))))</span></div><div class='line' id='LC139'><br/></div><div class='line' id='LC140'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-count-lines-function</span></div><div class='line' id='LC141'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">function</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">rstart</span> <span class="nv">rend</span><span class="p">)</span></div><div class='line' id='LC142'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;Count the lines specified by the region bounded by</span></div><div class='line' id='LC143'><span class="s">RSTART and REND.&quot;</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">how-many</span> <span class="s">&quot;\n&quot;</span> <span class="nv">rstart</span> <span class="nv">rend</span><span class="p">))))</span></div><div class='line' id='LC145'><br/></div><div class='line' id='LC146'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-modeline-format-alist</span></div><div class='line' id='LC147'>&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">((</span><span class="s">&quot;%W&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">number-to-string</span> <span class="nv">wc-orig-words</span><span class="p">))</span></div><div class='line' id='LC148'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%L&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">number-to-string</span> <span class="nv">wc-orig-lines</span><span class="p">))</span></div><div class='line' id='LC149'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%C&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">number-to-string</span> <span class="nv">wc-orig-chars</span><span class="p">))</span></div><div class='line' id='LC150'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%w&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">wc-prepend-sign</span> <span class="nv">wc-words-delta</span><span class="p">))</span></div><div class='line' id='LC151'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%l&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">wc-prepend-sign</span> <span class="nv">wc-lines-delta</span><span class="p">))</span></div><div class='line' id='LC152'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%c&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">wc-prepend-sign</span> <span class="nv">wc-chars-delta</span><span class="p">))</span></div><div class='line' id='LC153'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%gc&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">wc-prepend-sign</span> <span class="nv">wc-char-goal</span><span class="p">))</span></div><div class='line' id='LC154'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%gl&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">wc-prepend-sign</span> <span class="nv">wc-line-goal</span><span class="p">))</span></div><div class='line' id='LC155'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%gw&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">wc-prepend-sign</span> <span class="nv">wc-word-goal</span><span class="p">))</span></div><div class='line' id='LC156'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%tc&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">number-to-string</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">wc-orig-chars</span> <span class="nv">wc-chars-delta</span><span class="p">)))</span></div><div class='line' id='LC157'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%tl&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">number-to-string</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">wc-orig-lines</span> <span class="nv">wc-lines-delta</span><span class="p">)))</span></div><div class='line' id='LC158'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="s">&quot;%tw&quot;</span> <span class="o">.</span> <span class="p">(</span><span class="nf">number-to-string</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">wc-orig-words</span> <span class="nv">wc-words-delta</span><span class="p">))))</span></div><div class='line' id='LC159'>&nbsp;&nbsp;<span class="s">&quot;Format and value pair</span></div><div class='line' id='LC160'><span class="s">Format will be evaluated in `wc-generate-modeline&#39;&quot;</span><span class="p">)</span></div><div class='line' id='LC161'><br/></div><div class='line' id='LC162'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">wc-mode-hooks</span> <span class="nv">nil</span> <span class="s">&quot;Hooks to run upon entry to wc-mode&quot;</span><span class="p">)</span></div><div class='line' id='LC163'><br/></div><div class='line' id='LC164'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-format-modeline-string</span> <span class="p">(</span><span class="nf">fmt</span><span class="p">)</span></div><div class='line' id='LC165'>&nbsp;&nbsp;<span class="s">&quot;Format the modeline string according to specification and return result&quot;</span></div><div class='line' id='LC166'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">case-fold-search</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC167'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">dolist</span> <span class="p">(</span><span class="nf">pair</span> <span class="nv">wc-modeline-format-alist</span> <span class="nv">fmt</span><span class="p">)</span></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">string-match</span> <span class="p">(</span><span class="nb">car </span><span class="nv">pair</span><span class="p">)</span> <span class="nv">fmt</span><span class="p">)</span></div><div class='line' id='LC169'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">fmt</span> <span class="p">(</span><span class="nf">replace-match</span> <span class="p">(</span><span class="nb">eval </span><span class="p">(</span><span class="nb">cdr </span><span class="nv">pair</span><span class="p">))</span> <span class="nv">t</span> <span class="nv">t</span> <span class="nv">fmt</span><span class="p">))))))</span></div><div class='line' id='LC170'><br/></div><div class='line' id='LC171'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-prepend-sign</span> <span class="p">(</span><span class="nf">val</span><span class="p">)</span></div><div class='line' id='LC172'>&nbsp;&nbsp;<span class="s">&quot;Add a sign to the beginning of a value.</span></div><div class='line' id='LC173'><span class="s">Also cheat here a bit and add nil-value processing.&quot;</span></div><div class='line' id='LC174'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">val</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">format</span> <span class="s">&quot;%s%d&quot;</span></div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">&lt; </span><span class="nv">val</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <span class="s">&quot;-&quot;</span> <span class="s">&quot;+&quot;</span><span class="p">)</span></div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="p">(</span><span class="nb">abs </span><span class="nv">val</span><span class="p">))</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;none&quot;</span><span class="p">))</span></div><div class='line' id='LC180'><br/></div><div class='line' id='LC181'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-reset</span> <span class="p">()</span></div><div class='line' id='LC182'>&nbsp;&nbsp;<span class="s">&quot;Reset the original word, line, and char count to their current</span></div><div class='line' id='LC183'><span class="s">value.&quot;</span></div><div class='line' id='LC184'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC185'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-orig-words</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC186'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-orig-lines</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC187'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-orig-chars</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC188'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">wc-mode-update</span><span class="p">))</span></div><div class='line' id='LC189'><br/></div><div class='line' id='LC190'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-set-word-goal</span> <span class="p">(</span><span class="nf">goal</span><span class="p">)</span></div><div class='line' id='LC191'>&nbsp;&nbsp;<span class="s">&quot;Set a goal for adding or removing words in the buffer&quot;</span></div><div class='line' id='LC192'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span> <span class="s">&quot;nHow many words: &quot;</span><span class="p">)</span></div><div class='line' id='LC193'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-word-goal</span> <span class="nv">goal</span><span class="p">)</span></div><div class='line' id='LC194'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;Goal set at %d words&quot;</span> <span class="nv">goal</span><span class="p">))</span></div><div class='line' id='LC195'><br/></div><div class='line' id='LC196'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-set-line-goal</span> <span class="p">(</span><span class="nf">goal</span><span class="p">)</span></div><div class='line' id='LC197'>&nbsp;&nbsp;<span class="s">&quot;Set a goal for adding or removing lines in the buffer&quot;</span></div><div class='line' id='LC198'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span> <span class="s">&quot;nHow many lines: &quot;</span><span class="p">)</span></div><div class='line' id='LC199'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-line-goal</span> <span class="nv">goal</span><span class="p">)</span></div><div class='line' id='LC200'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;Goal set at %d lines&quot;</span> <span class="nv">goal</span><span class="p">))</span></div><div class='line' id='LC201'><br/></div><div class='line' id='LC202'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-set-char-goal</span> <span class="p">(</span><span class="nf">goal</span><span class="p">)</span></div><div class='line' id='LC203'>&nbsp;&nbsp;<span class="s">&quot;Set a goal for adding or removing chars in the buffer&quot;</span></div><div class='line' id='LC204'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span> <span class="s">&quot;nHow many characters: &quot;</span><span class="p">)</span></div><div class='line' id='LC205'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-char-goal</span> <span class="nv">goal</span><span class="p">)</span></div><div class='line' id='LC206'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;Goal set at %d characters&quot;</span> <span class="nv">goal</span><span class="p">))</span></div><div class='line' id='LC207'><br/></div><div class='line' id='LC208'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-goal-reached</span> <span class="p">()</span></div><div class='line' id='LC209'>&nbsp;&nbsp;<span class="s">&quot;Returns t when the goal change is reached.&quot;</span></div><div class='line' id='LC210'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">or</span></div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">wc-line-goal</span></div><div class='line' id='LC212'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">&lt; </span><span class="nv">wc-line-goal</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC213'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="p">(</span><span class="nb">&lt;= </span><span class="nv">wc-lines-delta</span> <span class="nv">wc-line-goal</span><span class="p">)</span></div><div class='line' id='LC214'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="p">(</span><span class="nb">&gt;= </span><span class="nv">wc-lines-delta</span> <span class="nv">wc-line-goal</span><span class="p">)))</span></div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">wc-word-goal</span></div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">&lt; </span><span class="nv">wc-word-goal</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="p">(</span><span class="nb">&lt;= </span><span class="nv">wc-words-delta</span> <span class="nv">wc-word-goal</span><span class="p">)</span></div><div class='line' id='LC218'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="p">(</span><span class="nb">&gt;= </span><span class="nv">wc-words-delta</span> <span class="nv">wc-word-goal</span><span class="p">)))</span></div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">wc-char-goal</span></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">&lt; </span><span class="nv">wc-char-goal</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="p">(</span><span class="nb">&lt;= </span><span class="nv">wc-chars-delta</span> <span class="nv">wc-char-goal</span><span class="p">)</span></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="p">(</span><span class="nb">&gt;= </span><span class="nv">wc-chars-delta</span> <span class="nv">wc-char-goal</span><span class="p">)))))</span></div><div class='line' id='LC223'><br/></div><div class='line' id='LC224'><br/></div><div class='line' id='LC225'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-count</span> <span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">rstart</span> <span class="nv">rend</span> <span class="nv">field</span><span class="p">)</span></div><div class='line' id='LC226'>&nbsp;&nbsp;<span class="s">&quot;Count the words, lines and characters present in the region </span></div><div class='line' id='LC227'><span class="s">following point. This function follows most of the rules present </span></div><div class='line' id='LC228'><span class="s">in the `how-many&#39; function. If INTERACTIVE is omitted or nil, </span></div><div class='line' id='LC229'><span class="s">just return the word count, do not print it. Otherwise, if </span></div><div class='line' id='LC230'><span class="s">INTERACTIVE is t, the function behaves according to interactive </span></div><div class='line' id='LC231'><span class="s">behavior.</span></div><div class='line' id='LC232'><br/></div><div class='line' id='LC233'><span class="s">START and END specify the region to operate on.</span></div><div class='line' id='LC234'><br/></div><div class='line' id='LC235'><span class="s">When called interactively, this function first checks to see if</span></div><div class='line' id='LC236'><span class="s">it is in Transient Mark mode.  If that is the case, then the</span></div><div class='line' id='LC237'><span class="s">function operates over the marked region.  Otherwise, it will</span></div><div class='line' id='LC238'><span class="s">operate over the entire buffer.</span></div><div class='line' id='LC239'><span class="s">&quot;</span></div><div class='line' id='LC240'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC241'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">rstart</span></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">rend</span> <span class="p">(</span><span class="nb">max </span><span class="nv">rstart</span> <span class="nv">rend</span><span class="p">))</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">interactive-p</span><span class="p">)</span> <span class="nv">transient-mark-mode</span> <span class="nv">mark-active</span><span class="p">)</span></div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">rstart</span> <span class="p">(</span><span class="nf">region-beginning</span><span class="p">)</span></div><div class='line' id='LC245'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="nv">rend</span> <span class="p">(</span><span class="nf">region-end</span><span class="p">))</span></div><div class='line' id='LC246'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">rstart</span> <span class="p">(</span><span class="nf">point-min</span><span class="p">)</span></div><div class='line' id='LC247'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="nv">rend</span> <span class="p">(</span><span class="nf">point-max</span><span class="p">))))</span></div><div class='line' id='LC248'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">wcount</span> <span class="p">(</span><span class="nf">funcall</span> <span class="nv">wc-count-words-function</span> <span class="nv">rstart</span> <span class="nv">rend</span><span class="p">))</span></div><div class='line' id='LC249'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">lcount</span> <span class="p">(</span><span class="nf">funcall</span> <span class="nv">wc-count-lines-function</span> <span class="nv">rstart</span> <span class="nv">rend</span><span class="p">))</span></div><div class='line' id='LC250'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">ccount</span> <span class="p">(</span><span class="nf">funcall</span> <span class="nv">wc-count-chars-function</span> <span class="nv">rstart</span> <span class="nv">rend</span><span class="p">)))</span></div><div class='line' id='LC251'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">interactive-p</span><span class="p">)</span> <span class="p">(</span><span class="nf">message</span> <span class="s">&quot;%d line%s, %d word%s, %d char%s&quot;</span></div><div class='line' id='LC252'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="nv">lcount</span></div><div class='line' id='LC253'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">= </span><span class="nv">lcount</span> <span class="mi">1</span><span class="p">)</span> <span class="s">&quot;&quot;</span> <span class="s">&quot;s&quot;</span><span class="p">)</span></div><div class='line' id='LC254'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="nv">wcount</span></div><div class='line' id='LC255'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">= </span><span class="nv">wcount</span> <span class="mi">1</span><span class="p">)</span> <span class="s">&quot;&quot;</span> <span class="s">&quot;s&quot;</span><span class="p">)</span></div><div class='line' id='LC256'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="nv">ccount</span></div><div class='line' id='LC257'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">= </span><span class="nv">ccount</span> <span class="mi">1</span><span class="p">)</span> <span class="s">&quot;&quot;</span> <span class="s">&quot;s&quot;</span><span class="p">)</span></div><div class='line' id='LC258'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="p">))</span></div><div class='line' id='LC259'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">field</span></div><div class='line' id='LC260'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">nth</span> <span class="nv">field</span> <span class="p">(</span><span class="nb">list </span><span class="nv">lcount</span> <span class="nv">wcount</span> <span class="nv">ccount</span><span class="p">))</span></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">list </span><span class="nv">lcount</span> <span class="nv">wcount</span> <span class="nv">ccount</span><span class="p">))))</span></div><div class='line' id='LC262'><br/></div><div class='line' id='LC263'><span class="p">(</span><span class="nf">defalias</span> <span class="ss">&#39;wc</span> <span class="ss">&#39;wc-count</span></div><div class='line' id='LC264'>&nbsp;&nbsp;<span class="s">&quot;Alias function `wc-count&#39; to the more legible `wc&#39;.&quot;</span><span class="p">)</span></div><div class='line' id='LC265'><br/></div><div class='line' id='LC266'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-generate-modeline</span> <span class="p">()</span></div><div class='line' id='LC267'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">modeline</span> <span class="p">(</span><span class="nf">wc-format-modeline-string</span> <span class="nv">wc-modeline-format</span><span class="p">)))</span></div><div class='line' id='LC268'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">wc-goal-reached</span><span class="p">)</span></div><div class='line' id='LC269'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">put-text-property</span> <span class="mi">0</span> <span class="p">(</span><span class="nb">length </span><span class="nv">modeline</span><span class="p">)</span> <span class="ss">&#39;face</span> <span class="ss">&#39;wc-goal-face</span> <span class="nv">modeline</span><span class="p">))</span></div><div class='line' id='LC270'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">list </span><span class="s">&quot; &quot;</span> <span class="nv">modeline</span><span class="p">)))</span></div><div class='line' id='LC271'><br/></div><div class='line' id='LC272'><span class="p">(</span><span class="nf">defun</span> <span class="nv">wc-mode-update</span> <span class="p">()</span></div><div class='line' id='LC273'>&nbsp;&nbsp;<span class="s">&quot;Return a string to update the modeline appropriately&quot;</span></div><div class='line' id='LC274'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">stats</span> <span class="p">(</span><span class="nf">wc-count</span> <span class="p">(</span><span class="nf">point-min</span><span class="p">)</span> <span class="p">(</span><span class="nf">point-max</span><span class="p">))))</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">unless</span> <span class="nv">wc-orig-lines</span> <span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-orig-lines</span> <span class="p">(</span><span class="nf">nth</span> <span class="mi">0</span> <span class="nv">stats</span><span class="p">)))</span></div><div class='line' id='LC276'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">unless</span> <span class="nv">wc-orig-words</span> <span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-orig-words</span> <span class="p">(</span><span class="nf">nth</span> <span class="mi">1</span> <span class="nv">stats</span><span class="p">)))</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">unless</span> <span class="nv">wc-orig-chars</span> <span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-orig-chars</span> <span class="p">(</span><span class="nf">nth</span> <span class="mi">2</span> <span class="nv">stats</span><span class="p">)))</span></div><div class='line' id='LC278'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-lines-delta</span> <span class="p">(</span><span class="nb">- </span><span class="p">(</span><span class="nf">nth</span> <span class="mi">0</span> <span class="nv">stats</span><span class="p">)</span> <span class="nv">wc-orig-lines</span><span class="p">))</span></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-words-delta</span> <span class="p">(</span><span class="nb">- </span><span class="p">(</span><span class="nf">nth</span> <span class="mi">1</span> <span class="nv">stats</span><span class="p">)</span> <span class="nv">wc-orig-words</span><span class="p">))</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">wc-chars-delta</span> <span class="p">(</span><span class="nb">- </span><span class="p">(</span><span class="nf">nth</span> <span class="mi">2</span> <span class="nv">stats</span><span class="p">)</span> <span class="nv">wc-orig-chars</span><span class="p">))</span></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">wc-generate-modeline</span><span class="p">)))</span></div><div class='line' id='LC282'><br/></div><div class='line' id='LC283'><span class="p">(</span><span class="nf">define-minor-mode</span> <span class="nv">wc-mode</span></div><div class='line' id='LC284'>&nbsp;&nbsp;<span class="s">&quot;Toggle wc mode With no argument, this command toggles the</span></div><div class='line' id='LC285'><span class="s">mode.  Non-null prefix argument turns on the mode.  Null prefix</span></div><div class='line' id='LC286'><span class="s">argument turns off the mode.</span></div><div class='line' id='LC287'><br/></div><div class='line' id='LC288'><span class="s">When Wc mode is enabled on a buffer, it counts the current words</span></div><div class='line' id='LC289'><span class="s">in the buffer and keeps track of a differential of added or</span></div><div class='line' id='LC290'><span class="s">subtracted words.</span></div><div class='line' id='LC291'><br/></div><div class='line' id='LC292'><span class="s">A goal of number of words added/subtracted can be set while using</span></div><div class='line' id='LC293'><span class="s">this mode. Upon completion of the goal, the modeline text will</span></div><div class='line' id='LC294'><span class="s">highlight indicating that the goal has been reached.</span></div><div class='line' id='LC295'><br/></div><div class='line' id='LC296'><span class="s">Commands:</span></div><div class='line' id='LC297'><span class="s">\\{wc-mode-map}</span></div><div class='line' id='LC298'><br/></div><div class='line' id='LC299'><span class="s">Entry to this mode calls the value of `wc-mode-hook&#39; if that</span></div><div class='line' id='LC300'><span class="s">value is non-nil.&quot;</span></div><div class='line' id='LC301'>&nbsp;&nbsp;<span class="c1">;; initial value (off)</span></div><div class='line' id='LC302'>&nbsp;&nbsp;<span class="nv">:init-value</span> <span class="nv">nil</span></div><div class='line' id='LC303'>&nbsp;&nbsp;<span class="c1">;; The indicator for the mode line</span></div><div class='line' id='LC304'>&nbsp;&nbsp;<span class="nv">:lighter</span> <span class="p">(</span><span class="nf">:eval</span> <span class="p">(</span><span class="nf">wc-mode-update</span><span class="p">))</span></div><div class='line' id='LC305'>&nbsp;&nbsp;<span class="c1">;; The customization group</span></div><div class='line' id='LC306'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;wc</span></div><div class='line' id='LC307'>&nbsp;&nbsp;<span class="c1">;; The local keymap to use</span></div><div class='line' id='LC308'>&nbsp;&nbsp;<span class="nv">:keymap</span> <span class="nv">wc-mode-map</span></div><div class='line' id='LC309'>&nbsp;&nbsp;<span class="c1">;; The mode body code</span></div><div class='line' id='LC310'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">wc-mode</span></div><div class='line' id='LC311'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">run-mode-hooks</span> <span class="ss">&#39;wc-mode-hooks</span><span class="p">)))</span></div><div class='line' id='LC312'><br/></div><div class='line' id='LC313'><span class="p">(</span><span class="nf">provide</span> <span class="ss">&#39;wc-mode</span><span class="p">)</span></div><div class='line' id='LC314'><span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC315'><span class="c1">;;; wc-mode.el ends here</span></div><div class='line' id='LC316'><br/></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.03078s from github-fe120-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/bnbeckwith/wc-mode/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

