;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
                                        ;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
                                        ;(package! another-package
                                        ;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
                                        ;(package! this-package
                                        ;  :recipe (:host github :repo "username/repo"
                                        ;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
                                        ;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
                                        ;(package! builtin-package :recipe (:nonrecursive t))
                                        ;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
                                        ;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
                                        ;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
                                        ;(unpin! pinned-package)
;; ...or multiple packages
                                        ;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
                                        ;(unpin! t)

;;增加gkroam
;;!(package! gkroam)

;;增加sql-formatter
(package! sqlformat)


;; evil f和t支持拼音
(package! evil-find-char-pinyin)

;; (package! ox-hugo
;;     :recipe (:host github :repo "kaushalmodi/ox-hugo" :nonrecursive t)
;;     :pin "8345ceb90f9addf99cb96a316fb24caa90ad0e77")

;;
;; eaf支持
(straight-use-package
 '(eaf
   :host github
   :repo "emacs-eaf/emacs-application-framework"
   :files (:defaults "eaf.py" "setup.py" "install-eaf.py" "core" "extension" "app" "*.el" )
   )
 )
;; (package! eaf
;;   :recipe (:local-repo "~/emacs-application-framework"
;;            :files (
;;                    "*.el"
;;                    "core/*.el"
;;                    "extension/*.el"
;;                    "app/demo/*.el"
;;                    "app/mindmap/*el"
;;                    "app/music-player/*el"
;;                    "app/video-player/*el"
;;                    "app/file-browser/*el"
;;                    "app/airshare/*el"
;;                    "app/browser/*el"
;;                    "app/file-manager/*el"
;;                    "app/file-sender/*el"
;;                    "app/image-viewer/*el"
;;                    "app/markdown-previewer/*el"
;;                    "app/browser/*el"
;;                    "app/pdf-viewer/*el"
;;                    "app/image-viewer/*el"
;;                    "app/terminal/*el"
;;                    "app/org-previewer/*el"
;;                    "app/system-monitor/*el"
;;                    )
;;            ))
;; (package! eaf
;;   :recipe (:local-repo "~/.emacs.d/site-lisp/emacs-application-framework"
;;            :files (
;;                    "*.el"
;;                    "core"
;;                    "extension"
;;                    "app"
;;                    )
;;            ))


(package! fanyi )

(package! exec-path-from-shell)

;;输入法自动切换
(package! sis)

;;org-roam-ui
(unpin! org-roam)
(package! org-roam-ui);

;;视频笔记
(package! org-media-note :recipe (:host github :repo "yuchen-lea/org-media-note"))
