(setq user-full-name "Goodwin Bell"
      user-mail-address "gtbell511@gmail.com")

(setq doom-font (font-spec :family "Monospace" :size 12))

(setq doom-theme 'doom-dark+)

(setq projectile-project-search-path '("~/gtbell/"))


(after! org
	(setq org-directory "~/Dropbox/gtbell/")

	(setq org-agenda-files '("~/Dropbox/gtbell/inbox.org"
		           "~/Dropbox/gtbell/main.org"
		           "~/Dropbox/gtbell/ticker.org"))

(setq org-protocol-default-template-key "l")
(setq org-capture-templates
 '(("l" "Link" entry (file+headline "~/Dropbox/gtbell/inbox.org" "Links")
        "* %:description\n %:link\n  %:initial")))



	(setq org-refile-targets '(("~/Dropbox/gtbell/main.org" :maxlevel . 3)
			("~/Dropbox/gtbell/someday.org" :level . 1)
	             	("~/Dropbox/gtbell/ticker.org" :maxlevel . 2)))

	(setq org-todo-keywords '((sequence "TODO(t)" "NEXT(n)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

	(setq org-todo-keyword-faces '(("TODO" :foreground "#0098dd" :weight normal :underline t)
			("NEXT" :foreground "#ff6480" :weight normal :underline t)
			("WAITING" :foreground "#9f7efe" :weight normal :underline t)
			("DONE" :foreground "#50a14f" :weight normal :underline t)
			("CANCELLED" :foreground "#7c7c75" :weight normal :underline t)))

	(setq org-tag-alist '(("@computer" . ?c) ("@home" . ?h) ("@phone" . ?p) ("@email" . ?e) ("@errand" . ?r) ("@personal" . ?m))))

(use-package org-roam
      :ensure t
      :hook
      (after-init . org-roam-mode)
      :custom
      (org-roam-directory "~/Dropbox/gtbell/")
      :bind (:map org-roam-mode-map
              (("C-c n l" . org-roam)
               ("C-c n f" . org-roam-find-file)
               ("C-c n g" . org-roam-graph-show))
              :map org-mode-map
              (("C-c n i" . org-roam-insert))
              (("C-c n I" . org-roam-insert-immediate))))
