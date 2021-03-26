
(setq user-full-name "Goodwin Bell"
      user-mail-address "gtbell511@gmail.com")

(setq doom-font (font-spec :family "Monospace" :size 12))
(setq doom-theme 'doom-dark+)
;;(setq doom-theme 'doom-dracula)
;;
(setq display-line-numbers-type 'relative)

(setq projectile-project-search-path '("~/Dropbox/gtbell/"))

(after! org
  (setq org-directory "~/Dropbox/gtbell/")

  (setq org-agenda-files '("~/Dropbox/gtbell/Workspaces/"))
  (setq org-deadline-warning-days 0)
  (setq org-agenda-skip-deadline-if-done t)
  (setq org-agenda-skip-scheduled-if-done t)

  (setq org-protocol-default-template-key "l")
  (setq org-capture-templates
        '(("l" "Link" entry (file+headline "~/Dropbox/gtbell/Workspaces/inbox.org" "Links")
           "* %:description\n %:link\n  %:initial")
        ("n" "Notes" entry (file+headline "~/Dropbox/gtbell/Workspaces/inbox.org" "Notes")
         "* %U\n %?")
        ("t" "Task" entry (file+headline "~/Dropbox/gtbell/Workspaces/inbox.org" "Tasks")
         "* TODO %?")
        ("p" "Project" entry (file+headline "~/Dropbox/gtbell/Workspaces/inbox.org" "Projects")
         "* TODO %? [/][%]\n + [ ]")
        ))

  (setq org-refile-targets '((org-agenda-files :maxlevel . 3)))

  (setq org-log-done 'time)
  (setq org-todo-keywords '((sequence "TODO(t)" "TODAY(n)" "WAITING(w)" "DEFERRED(r)" "INPROGRESS(i)" "PROJECT(p)" "|" "DONE(d)" "CANCELLED(c)")))
  (setq org-todo-keyword-faces '(("TODO" :foreground "#0098dd" :weight normal :underline t)
                                 ("TODAY" :foreground "#0098dd" :weight normal :underline t)
                                 ("WAITING" :foreground "#0098dd" :weight normal :underline t)
                                 ("DEFFERED" :foreground "#0098dd" :weight normal :underline t)
                                 ("INPROGRESS" :foreground "#ff6480" :weight normal :underline t)
                                 ("PROJECT" :foreground "#9f7efe" :weight normal :underline t)
                                 ("DONE" :foreground "#50a14f" :weight normal :underline t)
                                 ("CANCELLED" :foreground "#7c7c75" :weight normal :underline t)))

  (setq org-tag-alist '(("#School" . ?c) ("#Calculus" . ?h) ("@phone" . ?p) ("@email" . ?e) ("@errand" . ?r) ("@personal" . ?m))))

(after! org-roam
        (map! :leader
            :prefix "n"
            :desc "org-roam" "l" #'org-roam
            :desc "org-roam-insert" "i" #'org-roam-insert
            :desc "org-roam-switch-to-buffer" "b" #'org-roam-switch-to-buffer
            :desc "org-roam-find-file" "f" #'org-roam-find-file
            :desc "org-roam-show-graph" "g" #'org-roam-show-graph
            :desc "org-roam-insert" "i" #'org-roam-insert
            :desc "org-roam-capture" "c" #'org-roam-capture)
        (setq org-roam-directory "~/Dropbox/gtbell/"))

(find-file "~/Dropbox/gtbell/Workspaces/overview.org")
