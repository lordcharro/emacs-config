;; Org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; key binding
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

;; no startup msg (this was preventing the default-directory)  
(setq inhibit-startup-message t)

;; Directories
(setq org-directory (expand-file-name "~/org"))
(setq default-directory "~/org/")
; to open a default file at the beginning 
;(setq org-default-notes-file (concat org-directory "/mygtd.org"))
(setq org-agenda-files '("~/org" "~/www/org" "~/www/_org"))

;; Templates
;; using the "<P" shortcut 
(require 'org-tempo)
(tempo-define-template "project"
		       '("PROJECT:" p n "DATE:" n "PM:" n)
		       "<P"
		       "Insert a project tempate")

;; Add the Java structure code
(add-to-list 'org-structure-template-alist'("j" . "src Java"))

;; TO-DOs
(setq org-todo-keywords '((sequence "TODO(t)" "STARTED(s)" "BLOCKED(b)" "|" "DONE(d)" "CANCELED(c)")))

(setq org-todo-keyword-faces
      '(("BLOCKED" . (:foreground "OrangeRed" :weight bold))
        ("STARTED" . (:foreground "magenta" :weight bold))
        ("CANCELED" . (:foreground "LimeGreen" :weight bold))
        ))

