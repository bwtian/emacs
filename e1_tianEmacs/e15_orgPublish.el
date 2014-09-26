
(require 'ox-publish)
(setq org-publish-project-alist
  '(
        ("org-notes"               ;Used to export .org file
         :base-directory "~/Dropbox/6note/orgNote/"  ;directory holds .org files 
         :base-extension "org"     ;process .org file only    
         :publishing-directory  "~/Dropbox/6note/htmlNote/"    ;export destination
         ;:publishing-directory "/ssh:user@server" ;export to server
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4               ; Just the default for this project.
         :auto-preamble t
         :auto-sitemap t                  ; Generate sitemap.org automagically...
         :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
         :export-creator-info nil    ; Disable the inclusion of "Created by Org" in the postamble.
         :export-author-info nil     ; Disable the inclusion of "Author: Your Name" in the postamble.
         :auto-postamble nil         ; Disable auto postamble 
         :table-of-contents t        ; Set this to "t" if you want a table of contents, set to "nil" disables TOC.
         :section-numbers nil        ; Set this to "t" if you want headings to have numbers.
         :html-postamble "    <p class=\"postamble\">Last Updated %d.</p> " ; your personal postamble
         :style-include-default nil  ;Disable the default css style
        )

       

        ("org-static"                ;Used to publish static files
         :base-directory  "~/Dropbox/6note/orgNote/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory  "~/Dropbox/6note/htmlNote/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("org" :components ("org-notes" "org-static")) ;combine "org-static" and "org-static" into one function call
       
         ("R-notes"               ;Used to export .org file
         :base-directory "~/Dropbox/6note/RpkgsOrg/"  ;directory holds .org files 
         :base-extension "org"     ;process .org file only    
         :publishing-directory  "~/Dropbox/6note/RpkgsHtml/"    ;export destination
         ;:publishing-directory "/ssh:user@server" ;export to server
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4               ; Just the default for this project.
         :auto-preamble t
        )

        ("learnR"               ;Used to export .org file
         :base-directory "~/SparkleShare/learnRviaCode/Org"  ;directory holds .org files 
         :base-extension "org"     ;process .org file only    
         :publishing-directory  "~/SparkleShare/learnRviaCode/html"    ;export destination
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 3               ; Just the default for this project.
         :auto-preamble t
         :auto-sitemap t                  ; Generate sitemap.org automagically...
         :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
         :export-creator-info nil    ; Disable the inclusion of "Created by Org" in the postamble.
         :export-author-info t     ; Disable the inclusion of "Author: Your Name" in the postamble.
         :auto-postamble nil         ; Disable auto postamble 
         :table-of-contents t        ; Set this to "t" if you want a table of contents, set to "nil" disables TOC.
         :section-numbers t       ; Set this to "t" if you want headings to have numbers.
         :html-postamble "    <p class=\"postamble\">Last Updated %d.</p> " ; your personal postamble
         :style-include-default t  ;Disable the default css style
        )

))
