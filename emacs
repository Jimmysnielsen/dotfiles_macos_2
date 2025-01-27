
;; JSN 2025-02-25
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(howm sweeprolog)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; JSN 2025-01-25 fixing problem with option-8 and option-9 not mapping to square brackets
(setq mac-right-option-modifier t)

;; JSN 2025-01-25 force installing and loading howm
(unless (package-installed-p 'howm)
  (package-refresh-contents)
  (package-install 'howm))
(require 'howm)

;; JSN 2025-01-25 start up in full screen mode
(when (eq system-type 'darwin)
  (add-to-list 'default-frame-alist '(width . 200))  ; Set initial frame width
  (add-to-list 'default-frame-alist '(height . 60))  ; Set initial frame height
  (set-frame-parameter nil 'fullscreen 'maximized)) ; Maximize window on startup


;; ;; JSN 2025-01-25 start up with a split screen and org mode and howm minor mode
;; ;; Require necessary modes
(require 'org)
(require 'howm)

;; Function to set up initial window configuration
(defun my-emacs-startup-layout ()
  "Create initial window layout with *GNU Emacs* and *scratch*, focus on first window"
  (interactive)
;;  (delete-other-windows)
  (split-window-horizontally)
;; (switch-to-buffer "*GNU Emacs*")
;;(other-window 1)
;;(switch-to-buffer "*scratch*")
;;(other-window -1))  ; Switch back to first window
  )

;; Start in org-mode and howm minor mode
(add-hook 'emacs-startup-hook 
          (lambda ()
            (with-current-buffer "*scratch*"
              (org-mode)
              (howm-mode 1))))


;; Startup hook to apply configuration
(add-hook 'emacs-startup-hook 'my-emacs-startup-layout)
