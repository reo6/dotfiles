(setq user-full-name "reo"
      user-mail-address "emre@reoco.de")


(load "doom-themes")

;; doom-henna, doom-nord, doom-one, doom-opera, doom-miramare, doom-manegarm
(setq doom-theme 'doom-1337)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/org/")

;;(setq doom-font (font-spec :family "ProFont IIx Nerd Font" :size 15))
(setq doom-font (font-spec :family "Hack Nerd Font Mono" :size 14))

(beacon-mode 1)
(good-scroll-mode 1)
;; (elcord-mode 1)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized))))
)

(use-package aider
  :config
  (setq aider-args '("--model" "o3" "--no-show-model-warnings" "--no-gitignore"))
  (require 'aider-doom))

(map! :leader
      :desc "Aider command" "a" #'aider-command)

(set-frame-parameter nil 'alpha-background 60)

(after! evil
  (add-to-list 'evil-keyword "_"))
