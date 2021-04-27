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
      doom-unicode-font (font-spec :family "黑体"))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;;(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'nil)


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
(add-hook! 'org-pomodoro-started-hook (lambda ()(org-pomodoro-notify "Pomodoro Started" "Go!Go!Go!")))
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
;;   (defvar org-agenda-dir "" "gtd org files location")
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

(use-package! org-roam
  :hook
  (after-init . org-roam-mode)
  :custom
  (org-roam-directory "~/org/roam/")
  :bind (:map org-roam-mode-map
         (("C-c n l" . org-roam)
          ("C-c n f" . org-roam-find-file)
          ("C-c n g" . org-roam-graph)
          ("C-c n c" . org-roam-capture)
          )
         (
          ("C-c n y" . org-roam-dailies-capture-yesterday)
          ("C-c n t" . org-roam-dailies-capture-today)
          ("C-c n m" . org-roam-dailies-capture-tomorrow)
          ("C-c n d" . org-roam-dailies-find-date)
          ("C-c n n" . org-roam-dailies-find-next-note)
          ("C-c n b" . org-roam-dailies-find-previous-note)
          )
         :map org-mode-map
         (("C-c n i" . org-roam-insert))
         (("C-c n I" . org-roam-insert-immediate)))
  :config
  (setq org-roam-capture-templates
        '(
          ("d" "default" plain (function org-roam--capture-get-point)
           "%?"
           :file-name "%<%Y%m%d%H%M%S>-${slug}"
           :head "#+title: ${title}\n#+roam_alias: \n#+roam_tags: \n\n"
           :unnarrowed t)
          )
        )
  (setq org-roam-capture-ref-templates
        '(
          ("r" "ref" plain (function org-roam-capture--get-point)
           "%?"
           :file-name "${slug}"
           :head "#+title: ${title}\n#+roam_key: ${ref}\n#+roam_tags: web \n"
           :unnarrowed t)
          ("a" "Annotation" plain (function org-roam-capture--get-point)
           "%U ${body}\n"
           :file-name "${slug}"
           :head "#+title: ${title}\n#+roam_key: ${ref}\n#+roam_alias:\n"
           :immediate-finish t
           :unnarrowed t)
          ))

  )


;; set sql format
(setq sqlformat-command 'sqlparse)

;; eaf框架引入
;; (use-package! eaf
;;   :load-path "~/.emacs.d/site-lisp/emacs-application-framework" ; Set to "/usr/share/emacs/site-lisp/eaf" if installed from AUR
;;   :init
;;   (use-package! epc :defer t)
;;   (use-package! ctable :defer t)
;;   (use-package! deferred :defer t)
;;   :custom
;;   (eaf-browser-continue-where-left-off t)
;;   :config
;;   (eaf-setq eaf-browser-enable-adblocker "true")
;;   (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding)
;;   (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding)
;;   (eaf-bind-key take_photo "p" eaf-camera-keybinding)
;;   (eaf-bind-key nil "M-q" eaf-browser-keybinding) ;; unbind, see more in the Wiki
;;   (require 'eaf-evil) ;;使用evil
;;   (define-key key-translation-map (kbd "SPC")
;;     (lambda (prompt)
;;       (if (derived-mode-p 'eaf-mode)
;;           (pcase eaf--buffer-app-name
;;             ("browser" (if (eaf-call "call_function" eaf--buffer-id "is_focus")
;;                            (kbd "SPC")
;;                          (kbd eaf-evil-leader-key)))
;;             ("pdf-viewer" (kbd eaf-evil-leader-key))
;;             ("image-viewer" (kbd eaf-evil-leader-key))
;;             (_  (kbd "SPC")))
;;         (kbd "SPC"))))
;;   (defun eaf-org-open-file (file &optional link)
;;     "An wrapper function on `eaf-open'."
;;     (eaf-open file))
;;   ;; use `emacs-application-framework' to open PDF file: link
;;   (add-to-list 'org-file-apps '("\\.pdf\\'" . eaf-org-open-file))
;;   )

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
                       ) )

;;配置plantuml 使用jar包
(setq! plantuml-default-exec-mode 'jar)


;; (after! org-capture
;;     (org-capture-put :parents '("Projects")))

(after! org
  :custom
  (setq! org-capture-templates
         '(
           ("t" "Personal todo" entry
            (file+headline +org-capture-todo-file "Inbox")
            "* [ ] %?\n%i\n%a" :prepend t)
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
           ("a" "云南中烟 云智项目")
           ("at" "Project todo" entry
            (function +org-capture-central-project-todo-file)
            "* TODO %?\n %i\n %a"
            :heading "Tasks"
            :parents ("云南中烟")
            :prepend nil)
           ("an" "Project notes" entry
            (function +org-capture-central-project-notes-file)
            "* %U %?\n %i\n %a"
            :heading "Notes"
            :parents ("云南中烟")
            :prepend t)
           ("ac" "Project changelog" entry
            (function +org-capture-central-project-changelog-file)
            "* %U %?\n %i\n %a"
            :parents ("云南中烟")
            :prepend t)
           ("b" "京东B2B")
           ("bt" "Todo" entry
            (function +org-capture-central-project-todo-file)
            "* TODO %?\n %i\n %a"
            :heading "Tasks"
            :parents ("京东B2B")
            :prepend nil)
           ("bn" "Notes" entry
            (function +org-capture-central-project-notes-file)
            "* %U %?\n %i\n %a"
            :heading "Notes"
            :parents ("京东B2B")
            :prepend t)

           (function +org-capture-central-project-changelog-file)
           "* %U %?\n %i\n %a"
           :heading "Changelog"
           :parents ("云南中烟")
           :prepend t)
         ))


;;ox-hugo
(setq! org-hugo-default-section-directory "post")

;; fix slow
;; (remove-hook 'org-mode-hook #'org-superstar-mode)
;; (after! org
;;   (setq org-fontify-quote-and-verse-blocks nil
;;         org-fontify-whole-heading-line nil
;;         org-hide-leading-stars nil
;;         org-startup-indented nil))

;; (global-hl-line-mode 1)
