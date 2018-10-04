


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=10">
        <title>sdic-inline-pos-tip/sdic-inline-pos-tip.el at master · emacsmirror/sdic-inline-pos-tip · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="github-fe129-cp1-prd.iad.github.net">
    <meta name="ruby" content="ruby 1.9.3p194-tcs-github-tcmalloc (0e75de19f8) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="823682FC:0BB8:2BE1360:5285D5FD" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="NJi7YKZcyNrijTut5+CPc/O/uaeotnyPn3GYcMCNaS0=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-09acd31812af6ce17b5f432a7597c5849393330e.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-6ebb4c15aad4c5e5c208b07641d286818cef647a.css" media="all" rel="stylesheet" type="text/css" />
    

    

      <script src="https://github.global.ssl.fastly.net/assets/frameworks-bca527bb59d94c16d6bf2a759779d7953fa41e76.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-5447c2c783e9800198c851e5c6bc47c8e77f031d.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="25319770af14ba4f1bb4db199a7f325c">

        <link data-pjax-transient rel='permalink' href='/emacsmirror/sdic-inline-pos-tip/blob/b84ae7d76ad935513f6617d5700bfc4cc0f215ad/sdic-inline-pos-tip.el'>
  <meta property="og:title" content="sdic-inline-pos-tip"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/emacsmirror/sdic-inline-pos-tip"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="sdic-inline-pos-tip - Extension for sdic-inline-mode using pos-tip.el"/>

  <meta name="description" content="sdic-inline-pos-tip - Extension for sdic-inline-mode using pos-tip.el" />

  <meta content="155403" name="octolytics-dimension-user_id" /><meta content="emacsmirror" name="octolytics-dimension-user_login" /><meta content="551085" name="octolytics-dimension-repository_id" /><meta content="emacsmirror/sdic-inline-pos-tip" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="551085" name="octolytics-dimension-repository_network_root_id" /><meta content="emacsmirror/sdic-inline-pos-tip" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/emacsmirror/sdic-inline-pos-tip/commits/master.atom" rel="alternate" title="Recent Commits to sdic-inline-pos-tip:master" type="application/atom+xml" />

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
      <a class="button signin" href="/login?return_to=%2Femacsmirror%2Fsdic-inline-pos-tip%2Fblob%2Fmaster%2Fsdic-inline-pos-tip.el">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="emacsmirror/sdic-inline-pos-tip"
      data-branch="master"
      data-sha="93ea62d0fc8d5e44267bc90e40bafc28c6c4b28e"
  >

    <input type="hidden" name="nwo" value="emacsmirror/sdic-inline-pos-tip" />

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
    <a href="/login?return_to=%2Femacsmirror%2Fsdic-inline-pos-tip"
    class="minibutton with-count js-toggler-target star-button tooltipped upwards"
    title="You must be signed in to use this feature" rel="nofollow">
    <span class="octicon octicon-star"></span>Star
  </a>

    <a class="social-count js-social-count" href="/emacsmirror/sdic-inline-pos-tip/stargazers">
      1
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Femacsmirror%2Fsdic-inline-pos-tip"
        class="minibutton with-count js-toggler-target fork-button tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/emacsmirror/sdic-inline-pos-tip/network" class="social-count">
        0
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/emacsmirror" class="url fn" itemprop="url" rel="author"><span itemprop="title">emacsmirror</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/emacsmirror/sdic-inline-pos-tip" class="js-current-repository js-repo-home-link">sdic-inline-pos-tip</a></strong>

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
        <a href="/emacsmirror/sdic-inline-pos-tip" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /emacsmirror/sdic-inline-pos-tip">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


      <li class="tooltipped leftwards" title="Pull Requests"><a href="/emacsmirror/sdic-inline-pos-tip/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /emacsmirror/sdic-inline-pos-tip/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/emacsmirror/sdic-inline-pos-tip/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /emacsmirror/sdic-inline-pos-tip/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/emacsmirror/sdic-inline-pos-tip/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /emacsmirror/sdic-inline-pos-tip/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/emacsmirror/sdic-inline-pos-tip/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /emacsmirror/sdic-inline-pos-tip/network">
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
           value="https://github.com/emacsmirror/sdic-inline-pos-tip.git" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/emacsmirror/sdic-inline-pos-tip.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/emacsmirror/sdic-inline-pos-tip" readonly="readonly">

    <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/emacsmirror/sdic-inline-pos-tip" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
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



              <a href="/emacsmirror/sdic-inline-pos-tip/archive/master.zip"
                 class="minibutton sidebar-button"
                 title="Download this repository as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:d4d10409ab7ab10531096f8442aaaf8c -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/emacsmirror/sdic-inline-pos-tip/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

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
              <a href="/emacsmirror/sdic-inline-pos-tip/blob/master/sdic-inline-pos-tip.el"
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


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/emacsmirror/sdic-inline-pos-tip" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">sdic-inline-pos-tip</span></a></span></span><span class="separator"> / </span><strong class="final-path">sdic-inline-pos-tip.el</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="sdic-inline-pos-tip.el" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>



  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://0.gravatar.com/avatar/94cc244f8089f242a55445051bbb9819?d=https%3A%2F%2Fa248.e.akamai.net%2Fassets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png&amp;r=x&amp;s=140" width="24" />
    <span class="author"><span rel="author">anybody</span></span>
    <time class="js-relative-date" datetime="2010-04-09T01:40:14-07:00" title="2010-04-09 01:40:14">April 09, 2010</time>
    <div class="commit-title">
        <a href="/emacsmirror/sdic-inline-pos-tip/commit/b84ae7d76ad935513f6617d5700bfc4cc0f215ad" class="message" data-pjax="true" title="updates">updates</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>0</strong> contributors</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
      </ul>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>193 lines (165 sloc)</span>
        <span>6.247 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled tooltipped leftwards" href="#"
                 title="You must be signed in to make or propose changes">Edit</a>
          <a href="/emacsmirror/sdic-inline-pos-tip/raw/master/sdic-inline-pos-tip.el" class="button minibutton " id="raw-url">Raw</a>
            <a href="/emacsmirror/sdic-inline-pos-tip/blame/master/sdic-inline-pos-tip.el" class="button minibutton ">Blame</a>
          <a href="/emacsmirror/sdic-inline-pos-tip/commits/master/sdic-inline-pos-tip.el" class="button minibutton " rel="nofollow">History</a>
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

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">;;; sdic-inline-pos-tip.el -- Extension for sdic-inline-mode using pos-tip.el</span></div><div class='line' id='LC2'><br/></div><div class='line' id='LC3'><span class="c1">;; Copyright (C) 2010 S. Irie</span></div><div class='line' id='LC4'><br/></div><div class='line' id='LC5'><span class="c1">;; Author: S. Irie</span></div><div class='line' id='LC6'><span class="c1">;; Maintainer: S. Irie</span></div><div class='line' id='LC7'><span class="c1">;; Keywords: Tooltip, Dictionary</span></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">sdic-inline-pos-tip-version</span> <span class="s">&quot;0.0.8&quot;</span><span class="p">)</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="c1">;; This program is free software; you can redistribute it and/or</span></div><div class='line' id='LC12'><span class="c1">;; modify it under the terms of the GNU General Public License as</span></div><div class='line' id='LC13'><span class="c1">;; published by the Free Software Foundation; either version 2, or</span></div><div class='line' id='LC14'><span class="c1">;; (at your option) any later version.</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="c1">;; It is distributed in the hope that it will be useful, but WITHOUT</span></div><div class='line' id='LC17'><span class="c1">;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY</span></div><div class='line' id='LC18'><span class="c1">;; or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public</span></div><div class='line' id='LC19'><span class="c1">;; License for more details.</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'><span class="c1">;; You should have received a copy of the GNU General Public</span></div><div class='line' id='LC22'><span class="c1">;; License along with this program; if not, write to the Free</span></div><div class='line' id='LC23'><span class="c1">;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,</span></div><div class='line' id='LC24'><span class="c1">;; MA 02111-1307 USA</span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'><span class="c1">;;; Commentary:</span></div><div class='line' id='LC27'><br/></div><div class='line' id='LC28'><span class="c1">;; This program was written as a sample of pos-tip.el library, and</span></div><div class='line' id='LC29'><span class="c1">;; provides the tooltip showing word meanings at cursor position</span></div><div class='line' id='LC30'><span class="c1">;; like `rikaichan&#39; Firefox extension, using sdic-inline.el library</span></div><div class='line' id='LC31'><span class="c1">;; which was written by khiker.</span></div><div class='line' id='LC32'><br/></div><div class='line' id='LC33'><span class="c1">;; *** This program requires pos-tip.el version 0.3.0 or later ***</span></div><div class='line' id='LC34'><br/></div><div class='line' id='LC35'><span class="c1">;;</span></div><div class='line' id='LC36'><span class="c1">;; Installation:</span></div><div class='line' id='LC37'><span class="c1">;;</span></div><div class='line' id='LC38'><span class="c1">;; First, save this file as pos-tip.el and byte-compile in</span></div><div class='line' id='LC39'><span class="c1">;; a directory that is listed in load-path.</span></div><div class='line' id='LC40'><span class="c1">;;</span></div><div class='line' id='LC41'><span class="c1">;; Put the following in your .emacs file:</span></div><div class='line' id='LC42'><span class="c1">;;</span></div><div class='line' id='LC43'><span class="c1">;;   (require &#39;sdic-inline-pos-tip)</span></div><div class='line' id='LC44'><span class="c1">;;   (setq sdic-inline-display-func &#39;sdic-inline-pos-tip-show)</span></div><div class='line' id='LC45'><span class="c1">;;   (define-key sdic-inline-map &quot;\C-c\C-p&quot; &#39;sdic-inline-pos-tip-show)</span></div><div class='line' id='LC46'><span class="c1">;;</span></div><div class='line' id='LC47'><span class="c1">;; and start emacs, then system is enabled.</span></div><div class='line' id='LC48'><span class="c1">;;</span></div><div class='line' id='LC49'><br/></div><div class='line' id='LC50'><span class="c1">;;; History:</span></div><div class='line' id='LC51'><span class="c1">;; 2010-04-08  S. Irie</span></div><div class='line' id='LC52'><span class="c1">;;         * Changed to be available for non-X but graphical frames</span></div><div class='line' id='LC53'><span class="c1">;;              (** Require pos-tip.el ver. 0.3.0 or later **)</span></div><div class='line' id='LC54'><span class="c1">;;         * Version 0.0.8</span></div><div class='line' id='LC55'><span class="c1">;;</span></div><div class='line' id='LC56'><span class="c1">;; 2010-03-23  S. Irie</span></div><div class='line' id='LC57'><span class="c1">;;         * Changed to perform full justification</span></div><div class='line' id='LC58'><span class="c1">;;              (** Require pos-tip.el ver. 0.2.0 or later **)</span></div><div class='line' id='LC59'><span class="c1">;;         * Version 0.0.7</span></div><div class='line' id='LC60'><span class="c1">;;</span></div><div class='line' id='LC61'><span class="c1">;; 2010-03-22  S. Irie</span></div><div class='line' id='LC62'><span class="c1">;;         * Changed to perform word wrap or kinsoku shori</span></div><div class='line' id='LC63'><span class="c1">;;              (** Require pos-tip.el ver. 0.1.8 or later **)</span></div><div class='line' id='LC64'><span class="c1">;;         * Version 0.0.6</span></div><div class='line' id='LC65'><span class="c1">;;</span></div><div class='line' id='LC66'><span class="c1">;; 2010-03-16  S. Irie</span></div><div class='line' id='LC67'><span class="c1">;;         * Bug fix</span></div><div class='line' id='LC68'><span class="c1">;;         * Version 0.0.5</span></div><div class='line' id='LC69'><span class="c1">;;</span></div><div class='line' id='LC70'><span class="c1">;; 2010-03-11  S. Irie</span></div><div class='line' id='LC71'><span class="c1">;;         * Modified to simplify implementation</span></div><div class='line' id='LC72'><span class="c1">;;         * Fixed typo</span></div><div class='line' id='LC73'><span class="c1">;;         * Version 0.0.4</span></div><div class='line' id='LC74'><span class="c1">;;</span></div><div class='line' id='LC75'><span class="c1">;; 2010-03-09  S. Irie</span></div><div class='line' id='LC76'><span class="c1">;;         * Changed to use `pos-tip-split-string&#39;</span></div><div class='line' id='LC77'><span class="c1">;;              (** Require pos-tip.el ver. 0.1.0 or later **)</span></div><div class='line' id='LC78'><span class="c1">;;         * Version 0.0.3</span></div><div class='line' id='LC79'><span class="c1">;;</span></div><div class='line' id='LC80'><span class="c1">;; 2010-03-08  S. Irie</span></div><div class='line' id='LC81'><span class="c1">;;         * Added options to use substitutive functions in non-X frame</span></div><div class='line' id='LC82'><span class="c1">;;         * Version 0.0.2</span></div><div class='line' id='LC83'><span class="c1">;;</span></div><div class='line' id='LC84'><span class="c1">;; 2010-03-07  S. Irie</span></div><div class='line' id='LC85'><span class="c1">;;         * First release</span></div><div class='line' id='LC86'><span class="c1">;;         * Version 0.0.1</span></div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'><span class="c1">;; ToDo:</span></div><div class='line' id='LC89'><br/></div><div class='line' id='LC90'><span class="c1">;;; Code:</span></div><div class='line' id='LC91'><br/></div><div class='line' id='LC92'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;sdic-inline</span><span class="p">)</span></div><div class='line' id='LC93'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;pos-tip</span><span class="p">)</span></div><div class='line' id='LC94'><br/></div><div class='line' id='LC95'><span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC96'><span class="c1">;; Settings</span></div><div class='line' id='LC97'><span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC98'><br/></div><div class='line' id='LC99'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">sdic-inline-pos-tip-timeout-auto</span> <span class="mi">5</span></div><div class='line' id='LC100'>&nbsp;&nbsp;<span class="s">&quot;Timeout of tooltip for automatic popup (in seconds).</span></div><div class='line' id='LC101'><span class="s">See `pos-tip-show&#39; for details.&quot;</span><span class="p">)</span></div><div class='line' id='LC102'><br/></div><div class='line' id='LC103'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">sdic-inline-pos-tip-timeout-man</span> <span class="mi">0</span></div><div class='line' id='LC104'>&nbsp;&nbsp;<span class="s">&quot;Timeout of tooltip for manual popup (in seconds).</span></div><div class='line' id='LC105'><span class="s">See `pos-tip-show&#39; for details.&quot;</span><span class="p">)</span></div><div class='line' id='LC106'><br/></div><div class='line' id='LC107'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">sdic-inline-pos-tip-max-width</span> <span class="mi">80</span></div><div class='line' id='LC108'>&nbsp;&nbsp;<span class="s">&quot;Maximum width of tooltip. nil means use display width.&quot;</span><span class="p">)</span></div><div class='line' id='LC109'><br/></div><div class='line' id='LC110'><span class="p">(</span><span class="nf">defface</span> <span class="nv">sdic-inline-pos-tip</span></div><div class='line' id='LC111'>&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">((</span><span class="nf">t</span></div><div class='line' id='LC112'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:foreground</span> <span class="s">&quot;white&quot;</span></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:background</span> <span class="s">&quot;RoyalBlue4&quot;</span><span class="p">))</span></div><div class='line' id='LC114'>&nbsp;&nbsp;<span class="s">&quot;Face for description in sdic-inline-pos-tip&#39;s tooltip.&quot;</span><span class="p">)</span></div><div class='line' id='LC115'><br/></div><div class='line' id='LC116'><span class="p">(</span><span class="nf">defface</span> <span class="nv">sdic-inline-pos-tip-entry</span></div><div class='line' id='LC117'>&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">((</span><span class="nf">t</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:foreground</span> <span class="s">&quot;cyan&quot;</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:bold</span> <span class="nv">t</span></div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:inherit</span> <span class="nv">sdic-inline-pos-tip</span><span class="p">))</span></div><div class='line' id='LC121'>&nbsp;&nbsp;<span class="s">&quot;Face for entry in sdic-inline-pos-tip&#39;s tooltip.&quot;</span><span class="p">)</span></div><div class='line' id='LC122'><br/></div><div class='line' id='LC123'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">sdic-inline-pos-tip-subst-func-auto</span></div><div class='line' id='LC124'>&nbsp;&nbsp;<span class="ss">&#39;sdic-inline-display-minibuffer</span></div><div class='line' id='LC125'>&nbsp;&nbsp;<span class="s">&quot;Function used as substitute for auto-popup in text-only frame.&quot;</span><span class="p">)</span></div><div class='line' id='LC126'><br/></div><div class='line' id='LC127'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">sdic-inline-pos-tip-subst-func-man</span></div><div class='line' id='LC128'>&nbsp;&nbsp;<span class="ss">&#39;sdic-inline-display-popup</span></div><div class='line' id='LC129'>&nbsp;&nbsp;<span class="s">&quot;Function used as substitute for manual-popup in text-only frame.&quot;</span><span class="p">)</span></div><div class='line' id='LC130'><br/></div><div class='line' id='LC131'><span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC132'><span class="c1">;; Function</span></div><div class='line' id='LC133'><span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC134'><br/></div><div class='line' id='LC135'><span class="p">(</span><span class="nf">defun</span> <span class="nv">sdic-inline-pos-tip-show</span> <span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">entry</span><span class="p">)</span></div><div class='line' id='LC136'>&nbsp;&nbsp;<span class="s">&quot;Show tooltip which describes the word meanings at current point.&quot;</span></div><div class='line' id='LC137'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC138'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">cond</span></div><div class='line' id='LC139'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">window-system</span></div><div class='line' id='LC140'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">interactive-p</span><span class="p">)</span></div><div class='line' id='LC141'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">entry</span> <span class="nv">sdic-inline-last-entry</span><span class="p">))</span></div><div class='line' id='LC142'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">entry</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Use the same font as selected frame in tooltip</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-face-font</span> <span class="ss">&#39;sdic-inline-pos-tip</span> <span class="p">(</span><span class="nf">frame-parameter</span> <span class="nv">nil</span> <span class="ss">&#39;font</span><span class="p">))</span></div><div class='line' id='LC145'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Main part</span></div><div class='line' id='LC146'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">width</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC147'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="p">(</span><span class="nf">height</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC148'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="c1">;; &quot;\n&quot; should be propertized by the same face as the text</span></div><div class='line' id='LC149'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="c1">;; because their height also affect tooltip height.</span></div><div class='line' id='LC150'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="p">(</span><span class="nf">nl-head</span> <span class="p">(</span><span class="nf">propertize</span> <span class="s">&quot;\n&quot;</span> <span class="ss">&#39;face</span> <span class="ss">&#39;sdic-inline-pos-tip-entry</span><span class="p">))</span></div><div class='line' id='LC151'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="p">(</span><span class="nf">nl-desc</span> <span class="p">(</span><span class="nf">propertize</span> <span class="s">&quot;\n&quot;</span> <span class="ss">&#39;face</span> <span class="ss">&#39;sdic-inline-pos-tip</span><span class="p">)))</span></div><div class='line' id='LC152'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">pos-tip-show-no-propertize</span></div><div class='line' id='LC153'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="c1">;; Arrange string</span></div><div class='line' id='LC154'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="p">(</span><span class="nf">mapconcat</span></div><div class='line' id='LC155'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">item</span><span class="p">)</span></div><div class='line' id='LC156'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">head</span> <span class="p">(</span><span class="nf">sdicf-entry-headword</span> <span class="nv">item</span><span class="p">))</span></div><div class='line' id='LC157'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="c1">;; Split and justify the description if longer than max-width</span></div><div class='line' id='LC158'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="p">(</span><span class="nf">desc</span> <span class="p">(</span><span class="nf">pos-tip-fill-string</span> <span class="p">(</span><span class="nf">sdicf-entry-text</span> <span class="nv">item</span><span class="p">)</span></div><div class='line' id='LC159'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="nv">sdic-inline-pos-tip-max-width</span></div><div class='line' id='LC160'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="mi">1</span> <span class="ss">&#39;full</span><span class="p">))</span></div><div class='line' id='LC161'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="p">(</span><span class="nf">w-h</span> <span class="p">(</span><span class="nf">pos-tip-string-width-height</span> <span class="nv">desc</span><span class="p">)))</span></div><div class='line' id='LC162'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="c1">;; Calculate tooltip width and height</span></div><div class='line' id='LC163'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="p">(</span><span class="nf">setq</span> <span class="nv">width</span> <span class="p">(</span><span class="nb">max </span><span class="nv">width</span> <span class="p">(</span><span class="nf">string-width</span> <span class="nv">head</span><span class="p">)</span> <span class="p">(</span><span class="nb">car </span><span class="nv">w-h</span><span class="p">))</span></div><div class='line' id='LC164'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <span class="nv">height</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">height</span> <span class="mi">1</span> <span class="p">(</span><span class="nb">cdr </span><span class="nv">w-h</span><span class="p">)))</span></div><div class='line' id='LC165'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="c1">;; Propertize entry string by appropriate faces</span></div><div class='line' id='LC166'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="p">(</span><span class="nf">concat</span> <span class="p">(</span><span class="nf">propertize</span> <span class="nv">head</span> <span class="ss">&#39;face</span> <span class="ss">&#39;sdic-inline-pos-tip-entry</span><span class="p">)</span></div><div class='line' id='LC167'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="nv">nl-head</span></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <span class="p">(</span><span class="nf">propertize</span> <span class="nv">desc</span> <span class="ss">&#39;face</span> <span class="ss">&#39;sdic-inline-pos-tip</span><span class="p">))))</span></div><div class='line' id='LC169'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <span class="nv">entry</span> <span class="nv">nl-desc</span><span class="p">)</span></div><div class='line' id='LC170'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="c1">;; Face which specifies tooltip&#39;s background color</span></div><div class='line' id='LC171'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="ss">&#39;sdic-inline-pos-tip</span></div><div class='line' id='LC172'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="c1">;; Display current point, then omit POS and WINDOW</span></div><div class='line' id='LC173'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="nv">nil</span> <span class="nv">nil</span></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="c1">;; Timeout</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">interactive-p</span><span class="p">)</span></div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <span class="nv">sdic-inline-pos-tip-timeout-man</span></div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <span class="nv">sdic-inline-pos-tip-timeout-auto</span><span class="p">)</span></div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="c1">;; Calculate tooltip&#39;s pixel size</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="p">(</span><span class="nf">pos-tip-tooltip-width</span> <span class="nv">width</span> <span class="p">(</span><span class="nf">frame-char-width</span><span class="p">))</span></div><div class='line' id='LC180'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="p">(</span><span class="nf">pos-tip-tooltip-height</span> <span class="nv">height</span> <span class="p">(</span><span class="nf">frame-char-height</span><span class="p">))))))</span></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;<span class="c1">;; If text-only frame, use substitutive function</span></div><div class='line' id='LC182'>&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">interactive-p</span><span class="p">)</span></div><div class='line' id='LC183'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">commandp</span> <span class="nv">sdic-inline-pos-tip-subst-func-man</span><span class="p">)</span></div><div class='line' id='LC184'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">call-interactively</span> <span class="nv">sdic-inline-pos-tip-subst-func-man</span><span class="p">)))</span></div><div class='line' id='LC185'>&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">functionp</span> <span class="nv">sdic-inline-pos-tip-subst-func-auto</span> <span class="p">)</span></div><div class='line' id='LC186'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">sdic-inline-pos-tip-subst-func-auto</span> <span class="nv">entry</span><span class="p">))))</span></div><div class='line' id='LC187'><br/></div><div class='line' id='LC188'><br/></div><div class='line' id='LC189'><span class="p">(</span><span class="nf">provide</span> <span class="ss">&#39;sdic-inline-pos-tip</span><span class="p">)</span></div><div class='line' id='LC190'><br/></div><div class='line' id='LC191'><span class="c1">;;;</span></div><div class='line' id='LC192'><span class="c1">;;; sdic-inline-pos-tip.el ends here</span></div></pre></div>
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
      <li>&copy; 2013 <span title="0.06307s from github-fe129-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
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
                 data-url="/emacsmirror/sdic-inline-pos-tip/suggestions/commit">
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

