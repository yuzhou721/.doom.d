;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-


;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!



;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "yuzhou"
      user-mail-address "shoper2@163.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "JetBrains Mono" :size 16)
      doom-unicode-font (font-spec :family "文泉驿正黑") )

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dark+)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;;(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;;set max-frame
(add-hook! 'window-setup-hook #'toggle-frame-maximized)

;; add start notify
;; (add-hook! 'org-pomodoro-started-hook (lambda ()(org-pomodoro-notify "Pomodoro Started" "Go!Go!Go!")))
;; (after! org
;;   ;; 修复pomodoro alert无法显示问题
;;   (use-package! org-pomodoro
;;     :config
;;     (add-hook 'org-pomodoro-started-hook (lambda ()(org-pomodoro-notify "Pomodoro Started" "Go!Go!Go!")))
;;     )
;;   ;;log4e配置
;;   (use-package! log4e
;;     :config
;;     (log4e:deflogger "alert" "%t [%l] %m" "%H:%M:%S"))
;;   ;;自己org配置
;;   (defvar org-agenda-
;;   (setq-default org-agenda-dir "~/org")
;;   (setq org-agenda-file-note (expand-file-name "notes.org" org-agenda-dir))
;;   (setq org-agenda-file-gtd (expand-file-name "gtd.org" org-agenda-dir))
;;   (setq org-agenda-file-journal (expand-file-name "journal.org" org-agenda-dir))
;;   (setq org-agenda-file-code-snippet (expand-file-name "snippet.org" org-agenda-dir))
;;   (setq org-default-notes-file (expand-file-name "gtd.org" org-agenda-dir))
;;   (setq org-default-readbooks-file (expand-file-name "books.org" org-agenda-dir))
;;   (setq org-agenda-file-home (expand-file-name "home.org" org-agenda-dir))
;;   (setq org-agenda-file-habit (expand-file-name "habit.org" org-agenda-dir))
;;   (setq org-agenda-file-inbox (expand-file-name "inbox.org" org-agenda-dir))
;;   (setq org-agenda-files (list org-agenda-dir))


;;   ;; the %i would copy the selected text into the template
;;   ;;http://www.howardism.org/Technical/Emacs/journaling-org.html
;;   ;;add multi-file journal
;;   (setq org-capture-templates
;;         '(("t" "Todo" entry (file+headline org-agenda-file-inbox "Inbox")
;;            "* TODO [#B] %?\n  %i\n"
;;            :empty-lines 1)
;;           ("o" "Home" entry (file+headline org-agenda-file-home "Home")
;;            "* TODO [#B] %?\n  %i\n"
;;            :empty-lines 1)
;;           ;; ("n" "Notes" entry (file+headline org-agenda-file-note "Quick notes")
;;           ;;  "* %?\n  %i\n %U"
;;           ;;  :empty-lines 1)
;;           ;; ("s" "Code Snippet" entry
;;           ;;  (file org-agenda-file-code-snippet)
;;           ;;  "* %?\t%^g\n#+BEGIN_SRC %^{language}\n\n#+END_SRC")
;;           ;; ("w" "Work" entry (file+headline org-agenda-file-gtd "Kingdee")
;;           ;;  "* TODO [#A] %?\n  %i\n %U"
;;           ;;  :empty-lines 1)
;;           ;; ("r" "Read Book" entry(file+datetree org-default-readbooks-file)
;;           ;;  "* %?"
;;           ;;  :empty-lines 1)
;;           ;; ("l" "links" entry (file+headline org-agenda-file-note "Quick notes")
;;           ;;  "* TODO [#C] %?\n  %i\n %a \n %U"
;;           ;;  :empty-lines 1)
;;           ("h" "habit")
;;           ("hd" "daily" entry (file+headline org-agenda-file-habit "Daily")
;;            "* TODO %?\nSCHEDULED: <%<%Y-%m-%d %a .+1d>>\n:PROPERTIES:\n:CREATED: %U\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:LOGGING: DONE(!)\n:END:\n%U"
;;            :empty-lines 1)
;;           ("hw" "weekly" entry (file+headline org-agenda-file-habit "weekly")
;;            "* TODO %?\nSCHEDULED: <%<%Y-%m-%d %a .+1w>>\n:PROPERTIES:\n:CREATED: %U\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:LOGGING: DONE(!)\n:END:\n%U"
;;            :empty-lines 1)
;;           ("hm" "monthly" entry (file+headline org-agenda-file-habit "monthly")
;;            "* TODO %?\nSCHEDULED: <%<%Y-%m-%d %a .+1m>>\n:PROPERTIES:\n:CREATED: %U\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:LOGGING: DONE(!)\n:END:\n%U"
;;            :empty-lines 1)
;;           ))

;;   ;;An entry without a cookie is treated just like priority ' B '.
;;   ;;So when create new task, they are default 重要且紧急
;;   (setq org-agenda-custom-commands
;;         '(("w" . "任务安排")
;;           ("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
;;           ("wb" "重要且不紧急的任务" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")
;;           ("wc" "不重要且紧急的任务" tags-todo "+PRIORITY=\"C\"")
;;           ;; ("b" "Blog" tags-todo "BLOG")
;;           ("p" . "项目安排")
;;           ("pw" "所有工作项目" tags-todo "PROJECT+WORK")
;;           ("pz" "云南中烟" tags-todo "PROJECT+WORK+CATEGORY=\"ynzy\"")
;;           ("pt" "云南能投" tags-todo "PROJECT+WORK+CATEGORY=\"ynnt\"")
;;           ("pl" "自己的项目" tags-todo "+DREAM")
;;           ("i" "Inbox" tags-todo "INBOX")
;;           ("h" "Home" tags-todo "HOME")
;;           ("W" "Weekly Review"
;;            ((stuck "") ;; review stuck projects as designated by org-stuck-projects
;;             (tags-todo "PROJECT") ;; review all projects (assuming you use todo keywords to designate projects)
;;             (tags-todo "DEAM") ;; review all projects (assuming you use todo keywords to designate projects)
;;             (tags-todo "HOME") ;; review all projects (assuming you use todo keywords to designate projects)
;;             ))))
;;   ;;设置todo状态
;;   ;;可以在 () 中定义附加选项,包括:
;;   ;;字符:该状态的快捷键
;;   ;;! : 切换到该状态时会自动添加时间戳
;;   ;;@ : 切换到该状态时要求输入文字说明
;;   ;;如果同时设定@和!,使用@/!
;;   ;; (setq org-todo-keywords
;;   ;;      '((sequence "BUG(b!)" "|" "FIXED(f!)"
;;                                         ;       (sequence "TODO(t!)" "SOMEDAY(s)" "WAITING(w)" "|" "DONE(d!)" "CANCELED(c @/!)")
;;                                         ;       ))
;;                                         ;

;;   )

;; (defun yuzhou/growl-notification (title message &optional sticky)
;;   "Send a Growl notification"
;;   (shell-command
;;    (format "notify-send \"Emacs Notification\" \"<b>%s</b> \n%s\" "
;;            title
;;            message
;;            (if sticky "yes" "no"))))
;;(use-package! gkroam
;;:hook (after-init . gkroam-mode)
;;:init
;;(setq gkroam-root-dir "~/gkroam/org/")
;;(setq gkroam-prettify-page-p t
;;gkroam-show-brackets-p nil
;;gkroam-use-default-filename t
;;gkroam-window-margin 4)
;;:bind
;;(:map gkroam-mode-map
;;(("C-c r I" . gkroam-index)
;;("C-c r d" . gkroam-daily)
;;("C-c r D" . gkroam-delete)
;;("C-c r f" . gkroam-find)
;;("C-c r i" . gkroam-insert)
;;("C-c r n" . gkroam-dwim)
;;("C-c r e" . gkroam-link-edit)
;;("C-c r u" . gkroam-show-unlinked)
;;("C-c r p" . gkroam-toggle-prettify)
;;("C-c r t" . gkroam-toggle-brackets)
;;("C-c r R" . gkroam-rebuild-caches)
;;("C-c r g" . gkroam-update))))

;;   org-roam v1
;; (use-package! org-roam
;;   :hook
;;   (after-init . org-roam-mode)
;;   :custom
;;   (org-roam-directory "~/org/roam/")
;;   :bind (:map org-roam-mode-map
;;          (("C-c n l" . org-roam)
;;           ("C-c n f" . org-roam-find-file)
;;           ("C-c n g" . org-roam-graph)
;;           ("C-c n c" . org-roam-capture)
;;           )
;;          (
;;           ("C-c n y" . org-roam-dailies-capture-yesterday)
;;           ("C-c n t" . org-roam-dailies-capture-today)
;;           ("C-c n m" . org-roam-dailies-capture-tomorrow)
;;           ("C-c n d" . org-roam-dailies-find-date)
;;           ("C-c n n" . org-roam-dailies-find-next-note)
;;           ("C-c n b" . org-roam-dailies-find-previous-note)
;;           )
;;          :map org-mode-map
;;          (("C-c n i" . org-roam-insert))
;;          (("C-c n I" . org-roam-insert-immediate)))
;;   :config
;;   (setq org-roam-capture-templates
;;         '(
;;           ("d" "default" plain (function org-roam--capture-get-point)
;;            "%?"
;;            :file-name "%<%Y%m%d%H%M%S>-${slug}"
;;            :head "#+title: ${title}\n#+roam_alias: \n#+roam_tags: \n\n"
;;            :unnarrowed t)
;;           )
;;         )
;;   (setq org-roam-capture-ref-templates
;;         '(
;;           ("r" "ref" plain (function org-roam-capture--get-point)
;;            "%?"
;;            :file-name "${slug}"
;;            :head "#+title: ${title}\n#+roam_key: ${ref}\n#+roam_tags: web \n"
;;            :unnarrowed t)
;;           ("a" "Annotation" plain (function org-roam-capture--get-point)
;;            "${body}\n"
;;            :file-name "${slug}"
;;            :head "#+title: ${title}\n#+roam_key: ${ref}\n#+roam_alias:\n"
;;             :immediate-finish t
;;            :unnarrowed t)
;;           ))

;;   )
;;
;; org-roam v2
(use-package! org-roam
  :after org
  :custom
  (org-roam-directory "~/org/roam/")
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n g" . org-roam-ui-open)
         :map org-mode-map
         ("C-M-i" . completion-at-point)
         :map org-roam-dailies-map
         ("Y" . org-roam-dailies-capture-yesterday)
         ("T" . org-roam-dailies-capture-tomorrow))
  :bind-keymap
  ("C-c n d" . org-roam-dailies-map)
  ;; :bind (("C-c n l" . org-roam-buffer-toggle)
  ;;        ("C-c n f" . org-roam-node-find)
  ;;        ("C-c n g" . org-roam-ui-open)
  ;;        ("C-c n i" . org-roam-node-insert)
  ;;        ("C-c n c" . org-roam-capture)
  ;;        ("C-c n T" . org-roam-dailies-capture-today)
  ;;        ("C-c n t" . org-roam-dailies-goto-today)
  ;;        ("C-c n n" . org-roam-dailies-goto-next-note)
  ;;        ("C-c n p" . org-roam-dailies-goto-previous-note))
  :config
  (require 'org-roam-dailies)
  ;; (setq org-roam-capture-templates
  ;;       '(
  ;;         ("d" "default" plain
  ;;          "%?"
  ;;          :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+date: %U\n")
  ;;          :unnarrowed t)
  ;;         ("b" "book notes" plain
  ;;          "\n* Source\n\nAuthor: %^{Author}\nTitle: ${title}\nYear: %^{Year}\n\n* Summary\n\n%?"
  ;;          :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+date: %U\n")
  ;;          :unnarrowed t)
  ;;         )
  ;;       )
  (setq org-roam-capture-ref-templates
        '(
          ("r" "ref" plain
           "* %?"
           :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+date: %U\n#+filetags: :web:resource:\n")
           :unnarrowed t)
          ("a" "Annotation" plain
           "${body}\n"
           :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+date: %U\n#+filetags: :web:resource:\n")
           ;; :immediate-finish t
           :unnarrowed t)
          ))
  (setq org-roam-dailies-capture-templates
        `(
          ("d" "default" entry
           "* %?"
           :target (file+head "%<%Y-%m-%d>.org"
                              "#+title: %<%Y-%m-%d>\n#+filetags: :resource:\n"
                              ))))

  :init
  (org-roam-setup)
  )


;; set sql format
(setq sqlformat-command 'sqlparse)

;; eaf框架引入
(use-package! eaf
  ;; :load-path "~/.emacs.d/.local/straight/repos/emacs-application-framework"
  :custom
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  ;; (browse-url-browser-function 'eaf-open-browser)
  :config
  (require 'eaf-demo)
  (require 'eaf-mindmap)
  (require 'eaf-pdf-viewer)
  ;; (require 'eaf-mermaid)
  (require 'eaf-camera)
  (require 'eaf-image-viewer)
  (require 'eaf-file-manager)
  (require 'eaf-video-player)
  (require 'eaf-org-previewer)
  (require 'eaf-airshare)
  (require 'eaf-file-browser)
  (require 'eaf-jupyter)
  (require 'eaf-music-player)
  (require 'eaf-rss-reader)
  (require 'eaf-file-sender)
  (require 'eaf-terminal)
  (require 'eaf-vue-demo)
  (require 'eaf-browser)
  (require 'eaf-system-monitor)
  (require 'eaf-netease-cloud-music)
  (require 'eaf-markdown-previewer)
  )

(use-package! eaf-evil
  :config
  (define-key key-translation-map (kbd "SPC")
    (lambda (prompt)
      (if (derived-mode-p 'eaf-mode)
          (pcase eaf--buffer-app-name
            ("browser" (if (eaf-call "call_function" eaf--buffer-id "is_focus")
                           (kbd "SPC")
                         (kbd eaf-evil-leader-key)))
            ("pdf-viewer" (kbd eaf-evil-leader-key))
            ("image-viewer" (kbd eaf-evil-leader-key))
            ("eaf-rss-reader" (kbd eaf-evil-leader-key))
            (_  (kbd "SPC")))
        (kbd "SPC"))))
  )
;;protocol 添加书签以前导入url
(require 'org-protocol)

;; 修复word模糊问题
(setq! doc-view-resolution 200)

(after! javascript-mode
  (set-company-backend! 'javascript-mode 'company-yasnippet 'company-tide))

;;gpg密钥设置
(setq! org-crypt-key "shoper2@163.com")

;; log4j设置 不然调用libnotify报错
;; (log4e:deflogger "alert" "%t [%l] %m" "%H:%M:%S")
;; (log4e:deflogger "hoge" "%t [%l] %m" "%H:%M:%S" '((fatal . "fatal")
;;                                                   (error . "error")
;;                                                   (warn  . "warn")
;;                                                   (info  . "info")
;;                                                   (debug . "debug")
;;                                                   (trace . "trace")))

;; evil模式中文首字母检索
(after! evil
  (use-package! evil-find-char-pinyin
    :config
    (evil-find-char-pinyin-mode +1)
    ;; 打开evil-snipe支持
    (evil-find-char-pinyin-toggle-snipe-integration t)
    )
  )
(map! :after evil-org (:map evil-org-mode-map
                       :m "f" #'evil-find-char-pinyin
                       :m "F" #'evil-find-char-pinyin-backward
                       :m "t" #'evil-find-char-pinyin-to
                       :m "T" #'evil-find-char-pinyin-to-backward
                       :m ";" #'evil-repeat-find-char-pinyin
                       :m "," #'evil-repeat-find-char-pinyin-reverse
                       )
      )

;;配置plantuml 使用jar包
(setq! plantuml-default-exec-mode 'jar)


;; (after! org-capture
;;     (org-captur

(use-package! org
  ;; 加载任务启动通知
  :custom
  (org-log-done 'time)
  ;; (org-attach-id-dir "~/org/attach")
  :config
  (setq! org-capture-templates
         '(
           ("t" "Personal todo" entry
            (file+headline +org-capture-todo-file "Inbox")
            "* TODO %?\n %i\n %a" :prepend t)
           ("n" "Personal notes" entry
            (file+headline +org-capture-notes-file "Inbox")
            "* %u %?\n%i\n%a" :prepend t)
           ;; ("j" "Journal" entry
           ;;  (file+olp+datetree +org-capture-journal-file)
           ;;  "* %U %?\n%i\n%a" :prepend t)
           ;; Will use {org-directory}/{+org-capture-projects-file} and store
           ;; these under {ProjectName}/{Tasks,Notes,Changelog} headings. They
           ;; support `:parents' to specify what headings to put them under, e.g.
           ;; :parents ("Projects")
           ("a" "荣城ERP")
           ("at" "todo" entry
            (function +org-capture-central-project-todo-file)
            "* TODO [#B] %?\n %i\n %a"
            :heading "Tasks"
            :parents ("荣城 ERP")
            :prepend nil)
           ("an" "notes" entry
            (function +org-capture-central-project-notes-file)
            "* %U %?\n %i\n %a"
            :heading "Notes"
            :parents ("荣城 ERP")
            :prepend t)
           ("b" "荣城EPLUS")
           ("bt" "todo" entry
            (function +org-capture-central-project-todo-file)
            "* TODO [#B] %?\n %i\n %a"
            :heading "Tasks"
            :parents ("荣城 EPLUS")
            :prepend nil)
           ("bn" "notes" entry
            (function +org-capture-central-project-notes-file)
            "* %U %?\n %i\n %a"
            :heading "Notes"
            :parents ("荣城 EPLUS")
            :prepend t)
           ("bc" "changelog" entry
            (function +org-capture-central-project-changelog-file)
            "* %U %?\n %i\n %a"
            :heading "Changelog"
            :parents ("荣城 EPLUS")
            :prepend t)
           ;; ("b" "京东B2B")
           ;; ("bt" "Todo" entry
           ;;  (function +org-capture-central-project-todo-file)
           ;;  "* TODO %?\n %i\n %a"
           ;;  :heading "Tasks"
           ;;  :parents ("京东B2B")
           ;;  :prepend nil)
           ;; ("bn" "Notes" entry
           ;;  (function +org-capture-central-project-notes-file)
           ;;  "* %U %?\n %i\n %a"
           ;;  :heading "Notes"
           ;;  :parents ("京东B2B")
           ;;  :prepend t)
           ))
  (add-hook! org-pomodoro-started-hook (lambda ()(org-pomodoro-notify "Pomodoro Started" "Go!Go!Go!")))
  )

;;ox-hugo
;; (setq! org-hugo-default-section-directory "post")

;; fix slow
;; (remove-hook 'org-mode-hook #'org-superstar-mode)
;; (after! org
;;   (setq org-fontify-quote-and-verse-blocks nil
;;         org-fontify-whole-heading-line nil
;;         org-hide-leading-stars nil
;;         org-startup-indented nil))

;; (global-hl-line-mode 1)

;; 翻译
(use-package! fanyi
  :custom
  (fanyi-providers '(;; 海词
                     fanyi-haici-provider
                     ;; 有道同义词词典
                     fanyi-youdao-thesaurus-provider
                     ;; Etymonline
                     fanyi-etymon-provider
                     ;; Longman
                     fanyi-longman-provider)))

;;auto-save
(use-package! auto-save
  ;; :load-path "~/software/emacs-extends/auto-save"
  :custom
  (auto-save-idle 60)
  :config
  (setq auto-save-silent t)   ; quietly save
  (setq auto-save-delete-trailing-whitespace t)
  (auto-save-enable)
  )

;;输入法自动切换
(use-package! sis
  :if (or (string= (getenv "GTK_IM_MODULE") "ibus") IS-MAC)
  ;; :hook
  ;; ;; enable the /follow context/ and /inline region/ mode for specific buffers
  ;; (
  ;;  ((text-mode prog-mode) . sis-context-mode)
  ;;  ((text-mode prog-mode) . sis-inline-mode)
  ;;  )

  :config
  ;; For MacOS
  (if IS-MAC
      (sis-ism-lazyman-config
       "com.apple.keylayout.ABC"
       "com.sogou.inputmethod.sogou.pinyin" 'macism)
    (sis-ism-lazyman-config
     "xkb:us::eng"
     "libpinyin" 'ibus)
    )

  ;; enable the /cursor color/ mode
  (sis-global-cursor-color-mode t)
  ;; enable the /respect/ mode
  (sis-global-respect-mode t)

  (sis-global-context-mode t)
  ;; enable the /inline english/ mode for all buffers
  (sis-global-inline-mode t)
  )

;;org-roam-ui
(use-package! websocket
  :after org-roam)

(use-package! org-roam-ui
  :after org-roam ;; or :after org
  ;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
  ;;         a hookable mode anymore, you're advised to pick something yourself
  ;;         if you don't care about startup time, use
  ;; :hook (after-init . org-roam-ui-mode)
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

;;视频笔记
(use-package! org-media-note
  ;; :init (setq org-media-note-use-org-ref t)
  :hook (org-mode .  org-media-note-mode)
  :bind (
         ("C-c v" . org-media-note-hydra/body))  ;; 主功能入口
  :config
  (require 'org-attach)
  (setq org-media-note-screenshot-image-dir "~/org/Notes/imgs/")  ;; 用于存储视频截图的目录
  ;; (setq org-media-note-use-refcite-first t)  ;; 插入链接时，优先使用refcite链接
  )

;;文档注释
(use-package! docstr
  :config
  (global-docstr-mode 1))

(use-package! habitica
  :custom
  (habitica-uid "aae41ff9-302c-45eb-958b-761b30e59ef2")
  (habitica-token "72b0b8fb-f688-40f3-b773-fe812e5557b8")
  )
