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

;; Dracula theme path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)


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
        ("STARTED" . (:foreground "SteelBlue" :weight bold))
        ("CANCELED" . (:foreground "LimeGreen" :weight bold))
        ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("ed8e6f452855fc7338c8be77803666b34745c19c6667197db48952107fa6d983" default))
 '(ispell-dictionary nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
