(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional
(put 'upcase-region 'disabled nil)
(require 'ecb)
;;;(require 'ecb-autoloads)
(setq ecb-layout-name "leftright2")
(setq ecb-show-sources-in-directories-buffer 'always)
;;; activate and deactivate ecb
(global-set-key (kbd "C-x M-;") 'ecb-activate)
(global-set-key (kbd "C-x M-'") 'ecb-deactivate)
;;; show/hide ecb window
(global-set-key (kbd "C-;") 'ecb-show-ecb-windows)
(global-set-key (kbd "C-'") 'ecb-hide-ecb-windows)
;;; quick navigation between ecb windows
(global-set-key (kbd "C-x C-e") 'ecb-goto-window-edit1)
(global-set-key (kbd "C-x C-d") 'ecb-goto-window-directories)
(global-set-key (kbd "C-x C-s") 'ecb-goto-window-sources)
(global-set-key (kbd "C-x C-m") 'ecb-goto-window-methods)
;;; replacement for built-in ecb-deactive, ecb-hide-ecb-windows and
;;; ecb-show-ecb-windows functions
;;; since they hide/deactive ecb but not restore the old windows for me
;; (defun tmtxt/ecb-deactivate ()
;;   "deactive ecb and then split emacs into 2 windows that contain 2 most recent buffers"
;;   (interactive)
;;   (ecb-deactivate)
;;   (split-window-right)
;;   (switch-to-next-buffer)
;;   (other-window 1))
;; (defun tmtxt/ecb-hide-ecb-windows ()
;;   "hide ecb and then split emacs into 2 windows that contain 2 most recent buffers"
;;   (interactive)
;;   (ecb-hide-ecb-windows)
;;   (split-window-right)
;;   (switch-to-next-buffer)
;;   (other-window 1))
;; (defun tmtxt/ecb-show-ecb-windows ()
;;   "show ecb windows and then delete all other windows except the current one"
;;   (interactive)
;;   (ecb-show-ecb-windows)
;;   (delete-other-windows))
;; (global-set-key (kbd "C-x C-'") 'tmtxt/ecb-deactivate)
;; (global-set-key (kbd "C-;") 'tmtxt/ecb-show-ecb-windows)
;; (global-set-key (kbd "C-'") 'tmtxt/ecb-hide-ecb-windows)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
