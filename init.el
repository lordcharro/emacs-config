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
(setq org-agenda-files '("~/org"))

;; Always show inline images
(setq org-startup-with-inline-images t)

;; Templates
;; using the "<P" shortcut 
(require 'org-tempo)
(tempo-define-template "project"
		       '("PROJECT:" p n "DATE:" n "PM:" n)
		       "<P"
		       "Insert a project tempate")

;; Add the Java structure code
(add-to-list 'org-structure-template-alist'("j" . "src java"))

;; TO-DOs
(setq org-todo-keywords '((sequence "TODO(t)" "STARTED(s)" "BLOCKED(b)" "|" "DONE(d)" "CANCELED(c)")))

(setq org-todo-keyword-faces
      '(("BLOCKED" . (:foreground "OrangeRed" :weight bold))
        ("STARTED" . (:foreground "SteelBlue" :weight bold))
        ("CANCELED" . (:foreground "LimeGreen" :weight bold))
        ))

;; logging time when a to-do is marked as done
(setq org-log-done 'time)

;; to pass the custom config to a custom file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;;;;;;;;;;
;; Hooks
;;;;;;;;;;;

;; spell check
(add-hook 'org-mode-hook 'flyspell-mode)

;; allow line break at line x for org mode
(add-hook 'org-mode-hook '(lambda () (setq fill-column 100)))
(add-hook 'org-mode-hook 'turn-on-auto-fill)
