(setq user-full-name "reo"
      user-mail-address "emre@reoco.de")


(load "doom-themes")

;; doom-henna, doom-nord, doom-one, doom-opera, doom-miramare, doom-manegarm
(setq doom-theme 'doom-pine)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/org/")

(setq doom-font (font-spec :family "BigBlueTerm437 Nerd Font" :size 15))

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

(set-frame-parameter nil 'alpha-background 50)
