(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(inhibit-startup-screen t)
 '(package-selected-packages '(org-noter org-roam pdf-tools evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-visual-line-mode 1) ;; Defaults emacs' word-wrap to visual line mode
(require 'package)

(set-cursor-color "#ffffff") ;; Turn cursor color white

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/")t)
(package-initialize)

;; evil gives emacs vim-styled keybinds
(use-package evil
             :ensure t
             :config
             (evil-mode 1)
             (with-eval-after-load 'org
               (evil-define-key 'insert org-mode-map (kbd "TAB") 'tab-to-tab-stop)))

(use-package pdf-tools
	     :ensure t
	     :config
	     (pdf-tools-install))

(use-package org-roam
	     :ensure t)

;; Auto-compile org file after saving
(defun my/org-auto-export-to-pdf ()
  (when (eq major-mode 'org-mode)
    (org-latex-export-to-pdf)))
(add-hook 'after-save-hook #'my/org-auto-export-to-pdf)


;; Enable Python in org-babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (emacs-lisp . t)  ; usually good to keep this too
   ))
;; Optional but recommended: don't ask for confirmation on every eval
(setq org-confirm-babel-evaluate nil)
(setq org-babel-python-command "python3")
