;;; sacred-theme.el --- Nature Inspired Theme -*- lexical-binding: t; -*-

;; Copyright (C) 2019 Matthias Margush <matthias.margush@gmail.com>

;; Author: Matthias Margush <matthias.margush@gmail.com>
;; URL: https://github.com/matthias-margush/sacred-theme
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.4.0"))
;; Keywords: theme, faces

;; This file is NOT part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING. If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; Nature-inspired theme

;; See the README for more info:
;; https://github.com/matthias-margush/sacred-theme

;;; Variables:
(defgroup sacred-theme nil
  "Nature Inspired theme."
  :group 'sacred-theme
  :prefix "sacred-theme-")

;;; Code:
(defvar sacred-theme--shadow-dark "#3C4C55")
(defvar sacred-theme--shadow-medium "#405057")
(defvar sacred-theme--shadow-bright "#687A8D")
(defvar sacred-theme--light-dark "#E3DCCA")
(defvar sacred-theme--light-medium "#FBF5F0")
(defvar sacred-theme--light-medium "#FBF6F0")
(defvar sacred-theme--light-bright "#FFFAF2")
(defvar sacred-theme--moss "#92ba70")
(defvar sacred-theme--fire "#D86C6C")
(defvar sacred-theme--water "#77A0A9")

(defvar sacred-theme--bark "#6a5C56")
(defvar sacred-theme--soil "#B2A488")
(defvar sacred-theme--sun "#D8D915")

(defvar sacred-theme--added)
(defvar sacred-theme--changed)
(defvar sacred-theme--nav)
(defvar sacred-theme--alert)
(defvar sacred-theme--background)
(defvar sacred-theme--background-medium)
(defvar sacred-theme--background-dark)
(defvar sacred-theme--inverted-background)
(defvar sacred-theme--inverted-background-medium)
(defvar sacred-theme--inverted-background-bright)
(defvar sacred-theme--warning)
(defvar sacred-theme--block)
(defvar sacred-theme--deemphasize)
(defvar sacred-theme--doc)
(defvar sacred-theme--good)
(defvar sacred-theme--highlight-background)
(defvar sacred-theme--highlight-foreground)
(defvar sacred-theme--keyword)
(defvar sacred-theme--link)
(defvar sacred-theme--removed)
(defvar sacred-theme--text)
(defvar sacred-theme--inverted-text)

(defun sacred-theme (theme-name)
  "Create a sacred theme named THEME-NAME."
  (custom-theme-set-faces
   theme-name
   ;; Built-in stuff (Emacs 23)
   `(border ((t (:background ,sacred-theme--text))))
   `(internal-border ((t (:background "black"))))
   `(border-glyph ((t (nil))))
   `(cursor ((t (:background ,sacred-theme--text))))
   `(default ((t (:background ,sacred-theme--background :foreground ,sacred-theme--text))))
   `(fringe ((t (:background ,sacred-theme--background))))
   `(gui-element ((t (:background ,sacred-theme--text :foreground ,sacred-theme--added))))
   `(highlight-background ((t (:background ,sacred-theme--background))))
   `(link ((t (:foreground ,sacred-theme--link :underline t))))
   `(link-visited ((t (:foreground ,sacred-theme--link))))
   `(minibuffer-prompt ((t (:inherit default :inverse-video nil))))
   `(outline-1 ((t (:weight bold :foreground ,sacred-theme--keyword))))
   `(outline-2 ((t (:weight bold :foreground ,sacred-theme--keyword))))
   `(outline-3 ((t (:weight bold :foreground ,sacred-theme--keyword))))
   `(outline-4 ((t (:weight bold :foreground ,sacred-theme--keyword))))
   `(outline-5 ((t (:weight bold :foreground ,sacred-theme--keyword))))
   `(outline-6 ((t (:weight bold :foreground ,sacred-theme--keyword))))
   `(outline-7 ((t (:weight bold :foreground ,sacred-theme--keyword))))
   `(outline-8 ((t (:weight bold :foreground ,sacred-theme--keyword))))
   `(region ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--highlight-foreground))))
   `(secondary-selection ((t (:background ,sacred-theme--text :foreground ,sacred-theme--background))))
   `(error ((t (:foreground ,sacred-theme--alert :weight bold))))
   `(warning ((t (:foreground ,sacred-theme--doc :weight bold))))
   `(success ((t (:foreground ,sacred-theme--keyword :weight bold))))
   `(header-line ((t (:background ,sacred-theme--background :foreground ,sacred-theme--good))))
   `(escape-glyph ((t (:foreground ,sacred-theme--link))))

   ;; mode line
   `(mode-line ((t (:background ,sacred-theme--background-dark :foreground ,sacred-theme--inverted-background :box nil :underline nil :weight normal :inverse-video nil))))
   `(mode-line-inactive ((t (:inherit mode-line))))
   `(mode-line-buffer-id ((t (:inherit mode-line))))
   `(mode-line-buffer-id-inactive ((t (:inherit mode-line-inactive))))
   `(mode-line-emphasis ((t (:inherit mode-line :weight bold))))
   `(eyebrowse-mode-line-inactive ((t (:background ,sacred-theme--background :foreground ,sacred-theme--keyword :box nil :weight normal :inverse-video t))))
   `(eyebrowse-mode-line-separator ((t (:background ,sacred-theme--background :foreground ,sacred-theme--keyword :box nil :weight normal :inverse-video t))))
   `(eyebrowse-mode-line-delimiters ((t (:background ,sacred-theme--background :foreground ,sacred-theme--keyword :box nil :weight normal :inverse-video t))))
   `(mode-line-highlight-background ((t (:inherit mode-line :weight bold))))
   `(powerline-active1 ((t (:inherit mode-line :inverse-video t))))
   `(powerline-active2 ((t (:inherit mode-line :background ,sacred-theme--background-dark))))
   `(powerline-inactive1 ((t (:inherit modeline-inactive :background ,sacred-theme--background-medium))))
   `(powerline-inactive2 ((t (:inherit modeline-inactive :background ,sacred-theme--background-medium))))
   `(persp-face-lighter-buffer-not-in-persp ((t (:weight bold :foreground ,sacred-theme--inverted-text :background ,sacred-theme--alert))))


   ;; Font-lock stuff
   `(font-lock-builtin-face ((t (:foreground ,sacred-theme--keyword))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,sacred-theme--doc))))
   `(font-lock-comment-face ((t (:foreground ,sacred-theme--doc))))
   `(font-lock-constant-face ((t (:foreground ,sacred-theme--keyword))))
   `(font-lock-doc-face ((t (:foreground ,sacred-theme--doc))))
   `(font-lock-doc-string-face ((t (:foreground ,sacred-theme--text))))
   `(font-lock-function-name-face ((t (:foreground ,sacred-theme--keyword))))
   `(font-lock-keyword-face ((t (:foreground ,sacred-theme--keyword :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(font-lock-preprocessor-face ((t (:foreground ,sacred-theme--keyword))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,sacred-theme--link))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,sacred-theme--link))))
   `(font-lock-string-face ((t (:foreground ,sacred-theme--moss))))
   `(font-lock-type-face ((t (:foreground ,sacred-theme--text))))
   `(font-lock-variable-name-face ((t (:foreground ,sacred-theme--text))))
   `(font-lock-warning-face ((t (:foreground ,sacred-theme--sun))))

   ;; web mode
   `(web-mode-html-tag-face ((t (:inherit font-lock-keyword-face))))
   `(web-mode-error-face ((t (:inherit error))))
   `(web-mode-block-attr-name-face ((t (:foreground ,sacred-theme--moss))))
   `(web-mode-block-attr-value-face ((t (:foreground ,sacred-theme--water))))
   `(web-mode-block-face ((t (:foreground ,sacred-theme--sun))))
   `(web-mode-current-element-highlight-face ((t (:foreground ,sacred-theme--background :background ,sacred-theme--text))))
   `(web-mode-current-column-highlight-face ((t (:foreground ,sacred-theme--text :background ,sacred-theme--text))))
   `(web-mode-inlay-face ((t (:foreground ,sacred-theme--inverted-text :background ,sacred-theme--sun))))
   `(web-mode-json-context-face ((t (:foreground ,sacred-theme--keyword :background ,sacred-theme--background))))
   `(web-mode-json-key-face ((t (:foreground ,sacred-theme--keyword :background ,sacred-theme--background))))
   `(web-mode-symbol-face ((t (:foreground ,sacred-theme--keyword :background ,sacred-theme--background))))
   `(web-mode-whitespace-face ((t (:foreground ,sacred-theme--alert :background ,sacred-theme--alert))))

   ;; transient
   `(transient-disabled-suffix ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(transient-enabled-suffix ((t (:background ,sacred-theme--moss :foreground ,sacred-theme--inverted-text))))

   ;; tty
   `(tty-menu-disabled-face ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(tty-menu-enabled-face ((t (:background ,sacred-theme--water :foreground ,sacred-theme--inverted-text))))
   `(tty-menu-selected-face ((t (:background ,sacred-theme--moss :foreground ,sacred-theme--inverted-text))))

   ;; linum-mode
   `(linum ((t (:background ,sacred-theme--background :foreground ,sacred-theme--deemphasize))))

   ;; hl-todo
   `(hl-todo ((t (:foreground ,sacred-theme--alert))))

   ;; imenu
   `(imenu-list-entry-face ((t (:foreground ,sacred-theme--sun))))
   `(imenu-list-entry-face-1 ((t (:foreground ,sacred-theme--moss))))
   `(imenu-list-entry-face-2 ((t (:foreground ,sacred-theme--water))))
   `(imenu-list-entry-face-3 ((t (:foreground ,sacred-theme--soil))))
   `(imenu-list-entry-subalist-face-0 ((t (:foreground ,sacred-theme--sun :weight bold))))
   `(imenu-list-entry-subalist-face-1 ((t (:foreground ,sacred-theme--moss :weight bold))))
   `(imenu-list-entry-subalist-face-2 ((t (:foreground ,sacred-theme--water :weight bold))))
   `(imenu-list-entry-subalist-face-3 ((t (:foreground ,sacred-theme--soil :weight bold))))

   ;; misc
   `(holiday ((t (:foreground ,sacred-theme--sun))))
   `(homoglyph ((t (:foreground ,sacred-theme--link))))

   ;; auto-highlight-symbol
   `(ahs-definition-face ((t (:background ,sacred-theme--background :foreground ,sacred-theme--link :underline t))))
   `(ahs-edit-mode-face ((t (:background ,sacred-theme--background :box (:line-width 1 :color ,sacred-theme--deemphasize)))))
   `(ahs-face ((t (:background ,sacred-theme--background :box (:line-width 1 :color ,sacred-theme--deemphasize)))))
   `(ahs-plugin-bod-face ((t (:background ,sacred-theme--background (:line-width 1 :color ,sacred-theme--good)))))
   `(ahs-plugin-defalt-face ((t (:background ,sacred-theme--background (:line-width 1 :color ,sacred-theme--good)))))
   `(ahs-plugin-whole-buffer-face ((t (:background ,sacred-theme--background (:line-width 1 :color ,sacred-theme--good)))))
   `(ahs-warning-face ((t (:background ,sacred-theme--alert :foreground ,sacred-theme--inverted-text))))

   ;; cua
   `(cua-global-mark ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--highlight-foreground))))
   `(cua-rectangle ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--highlight-foreground))))
   `(cua-rectangle-no-select ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--highlight-foreground))))

   ;; anzu
   `(anzu-match-1 ((t (:background ,sacred-theme--good :foreground ,sacred-theme--inverted-text))))
   `(anzu-match-2 ((t (:background ,sacred-theme--keyword :foreground ,sacred-theme--inverted-text))))
   `(anzu-match-3 ((t (:background ,sacred-theme--link :foreground ,sacred-theme--inverted-text))))
   `(anzu-mode-line ((t (:foreground ,sacred-theme--text))))
   `(anzu-mode-line-no-match ((t (:foreground ,sacred-theme--alert))))
   `(anzu-replace-highlight ((t (:background ,sacred-theme--good :foreground ,sacred-theme--inverted-text))))
   `(anzu-replace-to ((t (:background ,sacred-theme--good :foreground ,sacred-theme--inverted-text))))

   ;; spacebar
   `(spacebar-persp ((t (:inherit variable-pitch :background ,sacred-theme--background :foreground ,sacred-theme--nav :weight bold :height 1.0))))
   `(spacebar-active ((t (:inherit variable-pitch :background ,sacred-theme--background :foreground ,sacred-theme--nav :weight bold :height 1.25))))
   `(spacebar-inactive ((t (:inherit variable-pitch :background ,sacred-theme--background :foreground ,sacred-theme--nav :weight normal :height 0.9))))

   ;; smerge
   `(smerge-base ((t (:foreground ,sacred-theme--water))))
   `(smerge-base-lower ((t (:foreground ,sacred-theme--sun))))
   `(smerge-markers ((t (:foreground ,sacred-theme--deemphasize))))
   `(smerge-refined-added ((t (:foreground ,sacred-theme--added))))
   `(smerge-refined-changed ((t (:foreground ,sacred-theme--changed))))
   `(smerge-refined-removed ((t (:foreground ,sacred-theme--removed))))
   `(smerge-upper ((t (:foreground ,sacred-theme--removed))))

   ;; spacemacs
   `(spacemacs-emacs-face ((t (:background ,sacred-theme--water :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-evilified-face ((t (:background ,sacred-theme--sun :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-helm-navigation-ts-face ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-hybrid-face ((t (:background ,sacred-theme--water :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-ido-navigation-ts-face ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-iedit-face ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-iedit-insert-face ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-insert-face ((t (:background ,sacred-theme--moss :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-lisp-face ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-micro-state-binding-face ((t (:background ,sacred-theme--sun :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-micro-state-header-face ((t (:weight bold :box (:line-width -1 :color ,(plist-get (face-attribute 'mode-line :box) :color) :style nil) :foreground ,sacred-theme--sun :background ,sacred-theme--inverted-text))))
   `(spacemacs-motion-face ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-normal-face ((t (:background ,sacred-theme--inverted-background :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-replace-face ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(spacemacs-visual-face ((t (:background ,sacred-theme--text :foreground ,sacred-theme--background))))

   ;; symbol overlay
   `(symbol-overlay-face-1 ((t (:background ,sacred-theme--water :foreground ,sacred-theme--inverted-text))))
   `(symbol-overlay-face-2 ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(symbol-overlay-face-3 ((t (:background ,sacred-theme--sun :foreground ,sacred-theme--inverted-text))))
   `(symbol-overlay-face-4 ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(symbol-overlay-face-5 ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(symbol-overlay-face-6 ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--inverted-text))))
   `(symbol-overlay-face-7 ((t (:background ,sacred-theme--moss :foreground ,sacred-theme--inverted-text))))
   `(symbol-overlay-face-8 ((t (:background ,sacred-theme--water :foreground ,sacred-theme--inverted-text))))

   ;; table.el
   `(table-cell ((t (:background ,sacred-theme--water :foreground ,sacred-theme--inverted-text))))

   ;; sp
   `(sp-wrap-overlay-closing-pair ((t (:foreground ,sacred-theme--fire :background ,sacred-theme--sun))))
   `(sp-wrap-overlay-opening-pair ((t (:foreground ,sacred-theme--inverted-text :background ,sacred-theme--sun))))

   ;; ivy
   `(ivy-posframe-border ((t (:background ,sacred-theme--highlight-background))))
   `(ivy-org ((t (:inherit default))))
   `(ivy-grep-info ((t (:inherit default :foreground ,sacred-theme--link))))
   `(ivy-grep-line-number ((t (:inherit default :foreground ,sacred-theme--link))))
   `(ivy-confirm-face ((t (:inverse-video t))))
   `(ivy-virtual ((t (:inherit default))))
   `(ivy-remote ((t (:inherit default))))
   `(ivy-posframe ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--text))))
   `(ivy-posframe-cursor ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--text))))
   `(ivy-prompt-match ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--text))))
   `(ivy-confirm-face ((t (:inherit minibuffer-prompt :foreground ,sacred-theme--text))))
   `(ivy-current-match ((t (:weight bold :foreground ,sacred-theme--link))))
   `(ivy-match-required-face ((t (:inherit minibuffer-prompt :foreground ,sacred-theme--alert))))
   `(ivy-minibuffer-match-face-1 ((t (:weight bold))))
   `(ivy-minibuffer-match-face-2 ((t (:weight bold))))
   `(ivy-minibuffer-match-face-3 ((t (:weight bold))))
   `(ivy-minibuffer-match-face-4 ((t (:weight bold))))
   `(ivy-highlight-face ((t (:inherit region))))
   `(ivy-remote ((t (:foreground ,sacred-theme--link))))

   ;; hydra
   `(hydra-face-amaranth ((t (:foregound ,sacred-theme--text :weight bold))))
   `(hydra-face-blue ((t (:foreground ,sacred-theme--text :weight bold))))
   `(hydra-face-pink ((t (:foreground ,sacred-theme--text :weight bold))))
   `(hydra-face-red ((t (:foreground ,sacred-theme--text :weight bold))))
   `(hydra-face-teal ((t (:foreground ,sacred-theme--text :weight bold))))

   ;; mu4e
   `(mu4e-header-highlight-background-face ((t (:inherit region :weight bold))))
   `(mu4e-title-face ((t (:inherit outline-2 :weight bold))))

   ;; neotree
   `(neo-banner-face ((t (:foreground ,sacred-theme--text :weight normal))))
   `(neo-dir-link-face ((t (:foreground ,sacred-theme--text))))
   `(neo-expand-btn-face ((t (:foreground ,sacred-theme--text))))
   `(neo-file-link-face ((t (:foreground ,sacred-theme--text))))
   `(neo-root-dir-face ((t (:foreground ,sacred-theme--text :weight normal))))
   `(neo-vc-added-face ((t (:foreground ,sacred-theme--keyword))))
   `(neo-vc-conflict-face ((t (:foreground ,sacred-theme--alert))))
   `(neo-vc-edited-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(neo-vc-ignored-face ((t (:foreground ,sacred-theme--deemphasize))))
   `(neo-vc-missing-face ((t (:foreground ,sacred-theme--alert))))
   `(neo-vc-needs-merge-face ((t (:foreground ,sacred-theme--alert))))
   `(neo-vc-unlocked-changes-face ((t (:background ,sacred-theme--link :foreground ,sacred-theme--background))))
   `(neo-vc-up-to-date-face ((t (:foreground ,sacred-theme--text))))
   `(neo-vc-user-face ((t (:foreground ,sacred-theme--alert :slant italic))))

   ;; Search
   `(lazy-highlight-background ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--highlight-foreground :weight normal))))
   `(match ((t (:foreground ,sacred-theme--highlight-foreground :background ,sacred-theme--text :inverse-video t))))
   `(isearch ((t (:foreground ,sacred-theme--inverted-text :background ,sacred-theme--changed :weight bold))))
   `(isearch-lazy-highlight-background-face ((t (:foreground ,sacred-theme--inverted-text :background ,sacred-theme--changed))))
   `(lazy-highlight ((t (:foreground ,sacred-theme--inverted-text :background ,sacred-theme--changed))))
   `(isearch-fail ((t (:background ,sacred-theme--changed :inherit font-lock-warning-face :inverse-video t))))

   ;; evil
   `(evil-search-highlight-background-persist-highlight-background-face ((t (:background ,sacred-theme--changed :inherit font-lock-warning-face :inverse-video t))))
   `(evil-ex-lazy-highlight ((t (:foreground ,sacred-theme--inverted-text :background ,sacred-theme--changed))))
   `(evil-ex-info ((t (:foreground ,sacred-theme--good))))
   `(evil-ex-substitute-replacement ((t (:foreground ,sacred-theme--alert))))

   ;; Popups
   `(popup-face ((t (:foreground ,sacred-theme--text :background ,sacred-theme--added))))
   `(popup-isearch-match ((t (:foreground ,sacred-theme--background :background ,sacred-theme--highlight-background))))
   `(popup-scroll-bar-background-face ((t (:background ,sacred-theme--doc))))
   `(popup-scroll-bar-foreground-face ((t (:background ,sacred-theme--text))))
   `(popup-summary-face ((t (:foreground ,sacred-theme--text))))
   `(popup-tip-face ((t (:background ,sacred-theme--inverted-background :foreground ,sacred-theme--inverted-text))))
   `(popup-menu-mouse-face ((t (:foreground ,sacred-theme--background :background ,sacred-theme--keyword))))
   `(popup-menu-selection-face ((t (:foreground ,sacred-theme--background :background ,sacred-theme--keyword))))

   ;; Flymake / Flycheck / Flyspell
   `(flymake-error ((t (:underline (:color ,sacred-theme--alert :style wave)))))
   `(flycheck-error ((t (:underline (:color ,sacred-theme--alert :style wave)))))
   `(flymake-warning ((t (:underline (:color ,sacred-theme--deemphasize :style wave)))))
   `(flycheck-error-list-highlight ((t (:background ,sacred-theme--changed :foreground ,sacred-theme--inverted-text))))
   `(flycheck-info ((t (:underline (:color ,sacred-theme--good :style wave)))))
   `(flycheck-warning ((t (:underline (:color ,sacred-theme--warning :style wave)))))
   `(flyspell-duplicate ((t (:underline (:color ,sacred-theme--warning :style wave)))))
   `(flyspell-incorrect ((t (:underline (:color ,sacred-theme--alert :style wave)))))

   ;; Emacs lisp
   `(eval-sexp-fu-flash ((t (:foreground ,sacred-theme--good))))
   `(eval-sexp-fu-flash-error ((t (:foreground ,sacred-theme--alert))))

   ;; Clojure errors
   `(clojure-test-failure-face ((t (:background nil :inherit flymake-warnline))))
   `(clojure-test-error-face ((t (:background nil :inherit flymake-errline))))
   `(clojure-test-success-face ((t (:background nil :foreground nil :underline ,sacred-theme--highlight-background))))

   ;; For Brian Carper's extended clojure syntax table
   `(clojure-keyword ((t (:foreground ,sacred-theme--link))))
   `(clojure-parens ((t (:foreground ,sacred-theme--added))))
   `(clojure-braces ((t (:foreground ,sacred-theme--highlight-background))))
   `(clojure-brackets ((t (:foreground ,sacred-theme--link))))
   `(clojure-double-quote ((t (:foreground ,sacred-theme--keyword :background nil))))
   `(clojure-special ((t (:foreground ,sacred-theme--keyword))))
   `(clojure-java-call ((t (:foreground ,sacred-theme--link))))

   ;; Avy
   `(avy-background-face ((t (:background ,sacred-theme--background :foreground ,sacred-theme--text))))
   `(avy-goto-char-timer-face ((t (:background ,sacred-theme--background :foreground ,sacred-theme--text))))
   `(avy-lead-face ((t (:background ,sacred-theme--link :foreground ,sacred-theme--inverted-text :weight bold))))
   `(avy-lead-face-0 ((t (:background ,sacred-theme--link :foreground ,sacred-theme--inverted-text :weight bold))))
   `(avy-lead-face-1 ((t (:background ,sacred-theme--link :foreground ,sacred-theme--inverted-text :weight bold))))
   `(avy-lead-face-2 ((t (:background ,sacred-theme--link :foreground ,sacred-theme--inverted-text :weight bold))))

   ;; ace window
   `(aw-background-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(aw-key-face ((t (:foreground ,sacred-theme--changed))))
   `(aw-leading-char-face ((t (:background ,sacred-theme--changed :foreground ,sacred-theme--inverted-text :height 2.5))))
   `(aw-minibuffer-leading-char-face ((t (:background ,sacred-theme--changed :foreground ,sacred-theme--inverted-text :height 2.5))))
   `(aw-mode-line-face ((t (:background ,sacred-theme--changed :foreground ,sacred-theme--inverted-text :height 2.5))))

   ;; MMM-mode
   `(mmm-code-submode-face ((t (:background ,sacred-theme--text))))
   `(mmm-comment-submode-face ((t (:inherit font-lock-comment-face))))
   `(mmm-output-submode-face ((t (:background ,sacred-theme--text))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,sacred-theme--link))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,sacred-theme--keyword))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,sacred-theme--keyword))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,sacred-theme--link))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,sacred-theme--keyword))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,sacred-theme--keyword))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,sacred-theme--text))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,sacred-theme--added))))

   ;; IDO
   `(ido-first-match ((t (:foreground ,sacred-theme--text :weight bold))))
   `(ido-indicator ((t (:background ,sacred-theme--background :foreground ,sacred-theme--highlight-background :width condensed))))
   `(ido-only-match ((t (:foreground ,sacred-theme--text :weight bold))))
   `(ido-subdir ((t (:foreground ,sacred-theme--text))))
   `(ido-incomplete-regexp ((t (:foreground ,sacred-theme--text))))
   `(ido-incomplete-virtual ((t (:foreground ,sacred-theme--text))))
   `(ido-virtual ((t (:foreground ,sacred-theme--text))))
   `(flx-highlight-face ((t (:foreground ,sacred-theme--text :underline t))))

   ;; Company
   `(company-echo-common ((t (:foreground ,sacred-theme--keyword))))
   `(company-preview ((t (:foreground ,sacred-theme--text))))
   `(company-preview-common ((t (:weight bold :foreground ,sacred-theme--text))))
   `(company-preview-search ((t (:weight bold :foreground ,sacred-theme--text))))
   `(company-scrollbar-bg ((t (:background ,sacred-theme--highlight-background))))
   `(company-scrollbar-fg ((t (:background ,sacred-theme--alert))))
   `(company-template-field ((t (:inherit region :background ,sacred-theme--highlight-background :foreground ,sacred-theme--text))))
   `(company-tooltip ((t (:background ,sacred-theme--inverted-background :foreground ,sacred-theme--inverted-text))))
   `(company-tooltip-annotation ((t (:foreground ,sacred-theme--alert))))
   `(company-tooltip-common ((t (:background ,sacred-theme--text :foreground ,sacred-theme--link))))
   `(company-tooltip-selection ((t (:background ,sacred-theme--highlight-background))))

   ;; which-function
   `(which-func ((t (:foreground ,sacred-theme--keyword :background nil :weight bold))))

   `(trailing-whitespace ((t (:background ,sacred-theme--fire :foreground ,sacred-theme--link))))
   `(whitespace-empty ((t (:foreground ,sacred-theme--keyword :background ,sacred-theme--link))))
   `(whitespace-hspace ((t (:background ,sacred-theme--doc :foreground ,sacred-theme--doc))))
   `(whitespace-indentation ((t (:background ,sacred-theme--link :foreground ,sacred-theme--keyword))))
   `(whitespace-line ((t (:background ,sacred-theme--text :foreground ,sacred-theme--good))))
   `(whitespace-newline ((t (:foreground ,sacred-theme--doc))))
   `(whitespace-space ((t (:background ,sacred-theme--text :foreground ,sacred-theme--doc))))
   `(whitespace-space-after-tab ((t (:background ,sacred-theme--link :foreground ,sacred-theme--keyword))))
   `(whitespace-space-before-tab ((t (:background ,sacred-theme--keyword :foreground ,sacred-theme--keyword))))
   `(whitespace-tab ((t (:background ,sacred-theme--doc :foreground ,sacred-theme--doc))))
   `(whitespace-trailing ((t (:background ,sacred-theme--keyword :foreground ,sacred-theme--link))))

   ;; Parenthesis matching (built-in)
   `(show-paren-match ((t (:weight bold))))
   `(show-paren-mismatch ((t (:background ,sacred-theme--alert))))

   ;; Parenthesis matching (mic-paren)
   `(paren-face-match ((t (:foreground nil :background nil :inherit show-paren-match))))
   `(paren-face-mismatch ((t (:foreground nil :background nil :inherit show-paren-mismatch))))
   `(paren-face-no-match ((t (:foreground nil :background nil :inherit show-paren-mismatch))))

   ;; Parenthesis dimming (parenface)
   `(paren-face ((t (:foreground ,sacred-theme--doc :background nil))))

   `(sh-heredoc ((t (:foreground nil :inherit font-lock-string-face :weight normal))))
   `(sh-quoted-exec ((t (:foreground nil :inherit font-lock-preprocessor-face))))
   `(slime-highlight-background-edits-face ((t (:weight bold))))
   `(slime-repl-input-face ((t (:weight normal :underline nil))))
   `(slime-repl-prompt-face ((t (:underline nil :weight bold :foreground ,sacred-theme--link))))
   `(slime-repl-result-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(slime-repl-output-face ((t (:foreground ,sacred-theme--keyword :background ,sacred-theme--text))))

   `(csv-separator-face ((t (:foreground ,sacred-theme--keyword))))

   `(diff-added ((t (:foreground ,sacred-theme--highlight-background))))
   `(diff-changed ((t (:foreground ,sacred-theme--link))))
   `(diff-removed ((t (:foreground ,sacred-theme--keyword))))
   `(diff-header ((t (:background ,sacred-theme--text :foreground ,sacred-theme--background))))
   `(diff-file-header ((t (:background ,sacred-theme--text :foreground ,sacred-theme--background))))
   `(diff-hunk-header ((t (:background ,sacred-theme--text :foreground ,sacred-theme--link))))
   `(diff-refine-added ((t (:background ,sacred-theme--added :foreground ,sacred-theme--inverted-text))))
   `(diff-refine-changed ((t (:background ,sacred-theme--changed :foreground ,sacred-theme--inverted-text))))
   `(diff-refine-removed ((t (:background ,sacred-theme--removed :foreground ,sacred-theme--inverted-text))))

   `(diff-hl-change ((t (:foreground ,sacred-theme--link))))
   `(diff-hl-delete ((t (:foreground ,sacred-theme--keyword))))
   `(diff-hl-insert ((t (:foreground ,sacred-theme--highlight-background))))

   `(ediff-even-diff-A ((t (:foreground nil :background nil :inverse-video t))))
   `(ediff-even-diff-B ((t (:foreground nil :background nil :inverse-video t))))
   `(ediff-odd-diff-A  ((t (:foreground ,sacred-theme--doc :background nil :inverse-video t))))
   `(ediff-odd-diff-B  ((t (:foreground ,sacred-theme--doc :background nil :inverse-video t))))

   `(eldoc-highlight-background-function-argument ((t (:foreground ,sacred-theme--highlight-background :weight bold))))

   ;; undo-tree
   `(undo-tree-visualizer-default-face ((t (:foreground ,sacred-theme--added))))
   `(undo-tree-visualizer-current-face ((t (:foreground ,sacred-theme--highlight-background :weight bold))))
   `(undo-tree-visualizer-active-branch-face ((t (:foreground ,sacred-theme--keyword))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,sacred-theme--link))))
   `(undo-tree-visualizer-unmodified-face ((t (:foreground ,sacred-theme--link))))

   ;; auctex
   `(font-latex-bold-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(font-latex-doctex-documentation-face ((t (:background ,sacred-theme--text))))
   `(font-latex-italic-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(font-latex-math-face ((t (:foreground ,sacred-theme--keyword))))
   `(font-latex-sectioning-0-face ((t (:foreground ,sacred-theme--link))))
   `(font-latex-sectioning-1-face ((t (:foreground ,sacred-theme--link))))
   `(font-latex-sectioning-2-face ((t (:foreground ,sacred-theme--link))))
   `(font-latex-sectioning-3-face ((t (:foreground ,sacred-theme--link))))
   `(font-latex-sectioning-4-face ((t (:foreground ,sacred-theme--link))))
   `(font-latex-sectioning-5-face ((t (:foreground ,sacred-theme--link))))
   `(font-latex-sedate-face ((t (:foreground ,sacred-theme--keyword))))
   `(font-latex-string-face ((t (:foreground ,sacred-theme--link))))
   `(font-latex-verbatim-face ((t (:foreground ,sacred-theme--keyword))))
   `(font-latex-warning-face ((t (:foreground ,sacred-theme--keyword))))

   ;; dired+
   `(diredp-compressed-file-suffix ((t (:foreground ,sacred-theme--keyword))))
   `(diredp-dir-heading ((t (:foreground nil :background nil :inherit heading))))
   `(diredp-dir-priv ((t (:foreground ,sacred-theme--keyword :background nil))))
   `(diredp-exec-priv ((t (:foreground ,sacred-theme--keyword :background nil))))
   `(diredp-executable-tag ((t (:foreground ,sacred-theme--keyword :background nil))))
   `(diredp-file-name ((t (:foreground ,sacred-theme--link))))
   `(diredp-file-suffix ((t (:foreground ,sacred-theme--highlight-background))))
   `(diredp-flag-mark-line ((t (:background nil :inherit highlight-background))))
   `(diredp-ignored-file-name ((t (:foreground ,sacred-theme--doc))))
   `(diredp-link-priv ((t (:background nil :foreground ,sacred-theme--link))))
   `(diredp-mode-line-flagged ((t (:foreground ,sacred-theme--keyword))))
   `(diredp-mode-line-marked ((t (:foreground ,sacred-theme--highlight-background))))
   `(diredp-no-priv ((t (:background nil))))
   `(diredp-number ((t (:foreground ,sacred-theme--link))))
   `(diredp-other-priv ((t (:background nil :foreground ,sacred-theme--link))))
   `(diredp-rare-priv ((t (:foreground ,sacred-theme--keyword :background nil))))
   `(diredp-read-priv ((t (:foreground ,sacred-theme--highlight-background :background nil))))
   `(diredp-symlink ((t (:foreground ,sacred-theme--link))))
   `(diredp-write-priv ((t (:foreground ,sacred-theme--link :background nil))))

   ;; magit
   `(magit-bisect-bad ((t (:foreground ,sacred-theme--alert))))
   `(magit-bisect-good ((t (:foreground ,sacred-theme--keyword))))
   `(magit-bisect-skip ((t (:foreground ,sacred-theme--text))))
   `(magit-branch-local ((t (:foreground ,sacred-theme--link))))
   `(magit-branch-remote ((t (:foreground ,sacred-theme--keyword))))
   `(magit-cherry-equivalent ((t (:foreground ,sacred-theme--alert))))
   `(magit-cherry-unmatched ((t (:foreground ,sacred-theme--link))))
   `(magit-diff-added ((t (:background ,sacred-theme--added :foreground ,sacred-theme--highlight-foreground))))
   `(magit-diff-added-highlight ((t (:background ,sacred-theme--added :foreground ,sacred-theme--highlight-foreground :weight bold))))
   `(magit-diff-base ((t (:background ,sacred-theme--block :foreground ,sacred-theme--text))))
   `(magit-diff-base-highlight ((t (:background ,sacred-theme--text :foreground ,sacred-theme--background :weight bold))))
   `(magit-diff-context ((t (:foreground ,sacred-theme--text))))
   `(magit-diff-context-highlight ((t (:background ,sacred-theme--block))))
   `(magit-diff-file-heading ((t (:weight normal))))
   `(magit-diff-file-heading-highlight-background ((t (:weight bold))))
   `(magit-diff-hunk-heading ((t (:background ,sacred-theme--background :foreground ,sacred-theme--text))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,sacred-theme--background :foreground ,sacred-theme--text :weight bold))))
   `(magit-diff-removed ((t (:background ,sacred-theme--removed :foreground ,sacred-theme--highlight-foreground))))
   `(magit-diff-removed-highlight ((t (:background ,sacred-theme--removed :foreground ,sacred-theme--highlight-foreground :weight bold))))
   `(magit-diff-whitespace-warning ((t (:background ,sacred-theme--removed :foreground ,sacred-theme--highlight-foreground))))
   `(magit-diffstat-added ((t (:foreground ,sacred-theme--keyword))))
   `(magit-diffstat-removed ((t (:foreground ,sacred-theme--alert))))
   `(magit-hash ((t (:foreground ,sacred-theme--keyword))))
   `(magit-log-author ((t (:foreground ,sacred-theme--alert))))
   `(magit-process-ng ((t (:inherit magit-section-heading :foreground ,sacred-theme--alert))))
   `(magit-process-ok ((t (:inherit magit-section-heading :foreground ,sacred-theme--keyword))))
   `(magit-reflog-amend ((t (:foreground ,sacred-theme--alert))))
   `(magit-reflog-checkout ((t (:foreground ,sacred-theme--link))))
   `(magit-reflog-cherry-pick ((t (:foreground ,sacred-theme--keyword))))
   `(magit-reflog-commit ((t (:foreground ,sacred-theme--keyword))))
   `(magit-reflog-merge ((t (:foreground ,sacred-theme--keyword))))
   `(magit-reflog-other ((t (:foreground ,sacred-theme--link))))
   `(magit-reflog-rebase ((t (:foreground ,sacred-theme--alert))))
   `(magit-reflog-remote ((t (:foreground ,sacred-theme--link))))
   `(magit-reflog-reset ((t (:foreground ,sacred-theme--alert))))
   `(magit-section-heading ((t (:foreground ,sacred-theme--keyword))))
   `(magit-section-heading-selection ((t (:foreground ,sacred-theme--alert))))
   `(magit-section-highlight ((t (:background ,sacred-theme--block :weight bold))))
   `(magit-sequence-drop ((t (:foreground ,sacred-theme--alert))))
   `(magit-sequence-head ((t (:foreground ,sacred-theme--link))))
   `(magit-sequence-part ((t (:foreground ,sacred-theme--highlight-background))))
   `(magit-sequence-stop ((t (:foreground ,sacred-theme--keyword))))
   `(magit-signature-bad ((t (:foreground ,sacred-theme--alert :weight normal))))
   `(magit-signature-error ((t (:foreground ,sacred-theme--alert))))
   `(magit-signature-expired ((t (:foreground ,sacred-theme--alert))))
   `(magit-signature-good ((t (:foreground ,sacred-theme--keyword))))
   `(magit-signature-revoked ((t (:foreground ,sacred-theme--alert))))
   `(magit-signature-untrusted ((t (:foreground ,sacred-theme--link))))
   `(magit-tag ((t (:foreground ,sacred-theme--highlight-background))))
   `(magithub-deleted-thing ((t (:inherit magit-section-highlight-background :background ,sacred-theme--alert))))

   ;; term and ansi-term
   `(term-color-black ((t (:foreground ,sacred-theme--text :background ,sacred-theme--text))))
   `(term-color-white ((t (:foreground ,sacred-theme--added :background ,sacred-theme--background))))
   `(term-color-red ((t (:foreground ,sacred-theme--keyword :background ,sacred-theme--keyword))))
   `(term-color-yellow ((t (:foreground ,sacred-theme--link :background ,sacred-theme--link))))
   `(term-color-green ((t (:foreground ,sacred-theme--highlight-background :background ,sacred-theme--highlight-background))))
   `(term-color-cyan ((t (:foreground ,sacred-theme--keyword :background ,sacred-theme--keyword))))
   `(term-color-blue ((t (:foreground ,sacred-theme--keyword :background ,sacred-theme--keyword))))
   `(term-color-magenta ((t (:foreground ,sacred-theme--link :background ,sacred-theme--link))))

   `(link ((t (:foreground nil :underline t))))
   `(widget-button ((t (:underline t))))
   `(widget-field ((t (:background ,sacred-theme--background :box (:line-width 1 :color ,sacred-theme--text)))))
   `(widget-button-pressed ((t (:background ,sacred-theme--background :foreground ,sacred-theme--fire))))
   `(widget-documentation ((t (:background ,sacred-theme--background :foreground ,sacred-theme--moss))))

   ;; Compilation (most faces politely inherit from 'success, 'error, 'warning etc.)
   `(compilation-column-number ((t (:foreground ,sacred-theme--link))))
   `(compilation-line-number ((t (:foreground ,sacred-theme--link))))
   `(compilation-message-face ((t (:foreground ,sacred-theme--keyword))))
   `(compilation-mode-line-exit ((t (:foreground ,sacred-theme--highlight-background))))
   `(compilation-mode-line-fail ((t (:foreground ,sacred-theme--keyword))))
   `(compilation-mode-line-run ((t (:foreground ,sacred-theme--keyword))))

   ;; tooltip
   `(tool-tip ( (t (:background ,sacred-theme--inverted-background :foreground ,sacred-theme--inverted-text))))
   `(tooltip ( (t (:foreground ,sacred-theme--background :background ,sacred-theme--text))))

   ;; Grep
   `(grep-context-face ((t (:foreground ,sacred-theme--doc))))
   `(grep-error-face ((t (:foreground ,sacred-theme--keyword :weight bold :underline t))))
   `(grep-hit-face ((t (:foreground ,sacred-theme--keyword))))
   `(grep-match-face ((t (:foreground nil :background nil :inherit match))))

   `(regex-tool-matched-face ((t (:foreground nil :background nil :inherit match))))

   ;; mark-multiple
   `(mm/master-face ((t (:inherit region :foreground nil :background nil))))
   `(mm/mirror-face ((t (:inherit region :foreground nil :background nil))))

   ;; info
   `(info-menu-header ((t (:inherit variable-pitch :foreground ,sacred-theme--nav))))
   `(info-menu-star ((t (:foreground ,sacred-theme--keyword))))

   ;; org-mode
   `(org-agenda-structure ((t (:foreground ,sacred-theme--link))))
   `(org-agenda-date ((t (:foreground ,sacred-theme--keyword :underline nil))))
   `(org-agenda-done ((t (:foreground ,sacred-theme--highlight-background))))
   `(org-agenda-dimmed-todo-face ((t (:foreground ,sacred-theme--doc))))
   `(org-block ((t (:foreground ,sacred-theme--text :background ,sacred-theme--block :box nil))))
   `(org-code ((t (:foreground ,sacred-theme--link))))
   `(org-column ((t (:background ,sacred-theme--text))))
   `(org-column-title ((t (:inherit org-column :weight bold :underline t))))
   `(org-date ((t (:foreground ,sacred-theme--link :underline t))))
   `(org-document-info ((t (:foreground ,sacred-theme--keyword))))
   `(org-document-info-keyword ((t (:foreground ,sacred-theme--keyword))))
   `(org-document-title ((t (:foreground ,sacred-theme--keyword :weight bold))))
   `(org-done ((t (:inherit default :foreground ,sacred-theme--doc :strike-through t))))
   `(org-headline-done ((t (:foreground ,sacred-theme--highlight-background :strike-through t))))
   `(org-ellipsis ((t (:foreground ,sacred-theme--doc))))
   `(org-footnote ((t (:foreground ,sacred-theme--keyword))))
   `(org-formula ((t (:foreground ,sacred-theme--keyword))))
   `(org-hide ((t (:foreground ,sacred-theme--text))))
   `(org-link ((t (:inherit link))))
   `(org-meta-line ((t (:foreground ,sacred-theme--keyword))))
   `(org-block-end-line ((t (:inherit org-meta-line :weight bold))))
   `(org-block-begin-line ((t (:inherit org-meta-line :weight bold))))
   `(org-scheduled ((t (:foreground ,sacred-theme--highlight-background))))
   `(org-scheduled-previously ((t (:foreground ,sacred-theme--keyword))))
   `(org-scheduled-today ((t (:foreground ,sacred-theme--highlight-background))))
   `(org-special-keyword ((t (:foreground ,sacred-theme--keyword))))
   `(org-property-value ((t (:foreground ,sacred-theme--keyword))))
   `(org-table ((t (:foreground ,sacred-theme--link))))
   `(org-tag ((t (:foreground ,sacred-theme--doc))))
   `(org-todo ((t (:inherit default :foreground ,sacred-theme--added))))
   `(org-upcoming-deadline ((t (:foreground ,sacred-theme--keyword))))
   `(org-warning ((t (:weight bold :foreground ,sacred-theme--keyword))))
   `(org-mode-line-clock-overrun ((t (:weight bold :foreground ,sacred-theme--inverted-text :background ,sacred-theme--alert))))

   `(markdown-url-face ((t (:inherit link))))
   `(markdown-link-face ((t (:foreground ,sacred-theme--link :underline t))))

   `(hl-sexp-face ((t (:background ,sacred-theme--text))))
   `(hl-line ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--highlight-foreground :weight normal))))
   `(highlight-background-80+ ((t (:background ,sacred-theme--text))))
   `(highlight ((t (:background ,sacred-theme--changed :foreground ,sacred-theme--inverted-text))))

   ;; Python-specific overrides
   `(py-builtins-face ((t (:foreground ,sacred-theme--keyword :weight normal))))
   ;; Cider
   `(cider-deprecated-face ((t (:background ,sacred-theme--alert))))
   `(cider-enlightened-face ((t (:inherit cider-result-overlay-face :box (:line-width -1 :color ,sacred-theme--highlight-background)))))
   `(cider-enlightened-local-face ((t (:foreground ,sacred-theme--highlight-background :weight bold))))
   `(cider-error-highlight-background-face ((t (:inherit nil :underline (:color ,sacred-theme--alert :style wave)))))
   `(cider-fringe-good-face ((t (:foreground ,sacred-theme--keyword))))
   `(cider-instrumented-face ((t (:box (:line-width -1 :color ,sacred-theme--alert)))))
   `(cider-result-overlay-face ((t (:background ,sacred-theme--keyword :foreground ,sacred-theme--background :box (:line-width -2 :color ,sacred-theme--keyword) :slant italic :weight bold))))
   `(cider-test-error-face ((t (:weight bold :inverse-video t :foreground ,sacred-theme--alert))))
   `(cider-test-failure-face ((t (:weight bold :inverse-video t :foreground ,sacred-theme--alert))))
   `(cider-test-success-face ((t (:weight bold :foreground ,sacred-theme--good))))
   `(cider-traced-face ((t (:box (:line-width -1 :color ,sacred-theme--link)))))
   `(cider-warning-highlight-background-face ((t (:inherit nil :underline (:color ,sacred-theme--highlight-background :style wave)))))

   ;; js2-mode
   `(js2-warning ((t (:underline (:color ,sacred-theme--sun :style wave)))))
   `(js2-error ((t (:foreground nil :underline (:color ,sacred-theme--sun :style wave)))))
   `(js2-external-variable ((t (:foreground ,sacred-theme--link))))
   `(js2-function-param ((t (:foreground ,sacred-theme--keyword))))
   `(js2-instance-member ((t (:foreground ,sacred-theme--keyword))))
   `(js2-object-property ((t (:foreground ,sacred-theme--keyword))))
   `(js2-private-function-call ((t (:foreground ,sacred-theme--keyword))))

   ;; js3-mode
   `(js3-warning-face ((t (:underline (:color ,sacred-theme--sun :style wave)))))
   `(js3-error-face ((t (:foreground nil :underline (:color ,sacred-theme--alert :style wave)))))
   `(js3-external-variable-face ((t (:foreground ,sacred-theme--link))))
   `(js3-function-param-face ((t (:foreground ,sacred-theme--keyword))))
   `(js3-jsdoc-tag-face ((t (:foreground ,sacred-theme--keyword))))
   `(js3-jsdoc-type-face ((t (:foreground ,sacred-theme--keyword))))
   `(js3-jsdoc-value-face ((t (:foreground ,sacred-theme--link))))
   `(js3-jsdoc-html-tag-name-face ((t (:foreground ,sacred-theme--keyword))))
   `(js3-jsdoc-html-tag-delimiter-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(js3-instance-member-face ((t (:foreground ,sacred-theme--keyword))))
   `(js3-private-function-call-face ((t (:foreground ,sacred-theme--keyword))))

   ;; nxml
   `(nxml-name-face ((t (:foreground unspecified :inherit font-lock-constant-face))))
   `(nxml-attribute-local-name-face ((t (:foreground unspecified :inherit font-lock-variable-name-face))))
   `(nxml-ref-face ((t (:foreground unspecified :inherit font-lock-preprocessor-face))))
   `(nxml-delimiter-face ((t (:foreground unspecified :inherit font-lock-keyword-face))))
   `(nxml-delimited-data-face ((t (:foreground unspecified :inherit font-lock-string-face))))
   `(rng-error-face ((t (:underline ,sacred-theme--keyword))))

   ;; RHTML
   `(erb-delim-face ((t (:background ,sacred-theme--text))))
   `(erb-exec-face ((t (:background ,sacred-theme--text :weight bold))))
   `(erb-exec-delim-face ((t (:background ,sacred-theme--text))))
   `(erb-out-face ((t (:background ,sacred-theme--text :weight bold))))
   `(erb-out-delim-face ((t (:background ,sacred-theme--text))))
   `(erb-comment-face ((t (:background ,sacred-theme--text :weight bold :slant italic))))
   `(erb-comment-delim-face ((t (:background ,sacred-theme--text))))

   ;; Message-mode
   `(message-header-other ((t (:foreground nil :background nil :weight normal))))
   `(message-header-subject ((t (:inherit message-header-other :weight bold :foreground ,sacred-theme--link))))
   `(message-header-to ((t (:inherit message-header-other :weight bold :foreground ,sacred-theme--keyword))))
   `(message-header-cc ((t (:inherit message-header-to :foreground nil))))
   `(message-header-name ((t (:foreground ,sacred-theme--keyword :background nil))))
   `(message-header-newsgroups ((t (:foreground ,sacred-theme--keyword :background nil :slant normal))))
   `(message-separator ((t (:foreground ,sacred-theme--link))))

   ;; Jabber
   `(jabber-chat-prompt-local ((t (:foreground ,sacred-theme--link))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,sacred-theme--keyword))))
   `(jabber-chat-prompt-system ((t (:foreground ,sacred-theme--link :weight bold))))
   `(jabber-chat-text-local ((t (:foreground ,sacred-theme--link))))
   `(jabber-chat-text-foreign ((t (:foreground ,sacred-theme--keyword))))
   `(jabber-chat-text-error ((t (:foreground ,sacred-theme--keyword))))

   `(jabber-roster-user-online ((t (:foreground ,sacred-theme--highlight-background))))
   `(jabber-roster-user-xa ((t :foreground ,sacred-theme--doc)))
   `(jabber-roster-user-dnd ((t :foreground ,sacred-theme--link)))
   `(jabber-roster-user-away ((t (:foreground ,sacred-theme--keyword))))
   `(jabber-roster-user-chatty ((t (:foreground ,sacred-theme--link))))
   `(jabber-roster-user-error ((t (:foreground ,sacred-theme--keyword))))
   `(jabber-roster-user-offline ((t (:foreground ,sacred-theme--doc))))

   `(jabber-rare-time-face ((t (:foreground ,sacred-theme--doc))))
   `(jabber-activity-face ((t (:foreground ,sacred-theme--link))))
   `(jabber-activity-personal-face ((t (:foreground ,sacred-theme--keyword))))

   ;; Gnus
   `(gnus-cite-1 ((t (:inherit outline-1 :foreground nil))))
   `(gnus-cite-2 ((t (:inherit outline-2 :foreground nil))))
   `(gnus-cite-3 ((t (:inherit outline-3 :foreground nil))))
   `(gnus-cite-4 ((t (:inherit outline-4 :foreground nil))))
   `(gnus-cite-5 ((t (:inherit outline-5 :foreground nil))))
   `(gnus-cite-6 ((t (:inherit outline-6 :foreground nil))))
   `(gnus-cite-7 ((t (:inherit outline-7 :foreground nil))))
   `(gnus-cite-8 ((t (:inherit outline-8 :foreground nil))))
   ;; there are several more -cite- faces...
   `(gnus-header-content ((t (:inherit message-header-other))))
   `(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-header-from ((t (:inherit message-header-other-face :weight bold :foreground ,sacred-theme--keyword))))
   `(gnus-header-name ((t (:inherit message-header-name))))
   `(gnus-button ((t (:inherit link :foreground nil))))
   `(gnus-signature ((t (:inherit font-lock-comment-face))))

   `(gnus-summary-normal-unread ((t (:foreground ,sacred-theme--keyword :weight normal))))
   `(gnus-summary-normal-read ((t (:foreground ,sacred-theme--added :weight normal))))
   `(gnus-summary-normal-ancient ((t (:foreground ,sacred-theme--keyword :weight normal))))
   `(gnus-summary-normal-ticked ((t (:foreground ,sacred-theme--keyword :weight normal))))
   `(gnus-summary-low-unread ((t (:foreground ,sacred-theme--doc :weight normal))))
   `(gnus-summary-low-read ((t (:foreground ,sacred-theme--doc :weight normal))))
   `(gnus-summary-low-ancient ((t (:foreground ,sacred-theme--doc :weight normal))))
   `(gnus-summary-high-unread ((t (:foreground ,sacred-theme--link :weight normal))))
   `(gnus-summary-high-read ((t (:foreground ,sacred-theme--highlight-background :weight normal))))
   `(gnus-summary-high-ancient ((t (:foreground ,sacred-theme--highlight-background :weight normal))))
   `(gnus-summary-high-ticked ((t (:foreground ,sacred-theme--keyword :weight normal))))
   `(gnus-summary-cancelled ((t (:foreground ,sacred-theme--keyword :background nil :weight normal))))

   `(gnus-group-mail-low ((t (:foreground ,sacred-theme--doc))))
   `(gnus-group-mail-low-empty ((t (:foreground ,sacred-theme--doc))))
   `(gnus-group-mail-1 ((t (:foreground nil :weight normal :inherit outline-1))))
   `(gnus-group-mail-2 ((t (:foreground nil :weight normal :inherit outline-2))))
   `(gnus-group-mail-3 ((t (:foreground nil :weight normal :inherit outline-3))))
   `(gnus-group-mail-4 ((t (:foreground nil :weight normal :inherit outline-4))))
   `(gnus-group-mail-5 ((t (:foreground nil :weight normal :inherit outline-5))))
   `(gnus-group-mail-6 ((t (:foreground nil :weight normal :inherit outline-6))))
   `(gnus-group-mail-1-empty ((t (:inherit gnus-group-mail-1 :foreground ,sacred-theme--doc))))
   `(gnus-group-mail-2-empty ((t (:inherit gnus-group-mail-2 :foreground ,sacred-theme--doc))))
   `(gnus-group-mail-3-empty ((t (:inherit gnus-group-mail-3 :foreground ,sacred-theme--doc))))
   `(gnus-group-mail-4-empty ((t (:inherit gnus-group-mail-4 :foreground ,sacred-theme--doc))))
   `(gnus-group-mail-5-empty ((t (:inherit gnus-group-mail-5 :foreground ,sacred-theme--doc))))
   `(gnus-group-mail-6-empty ((t (:inherit gnus-group-mail-6 :foreground ,sacred-theme--doc))))
   `(gnus-group-news-1 ((t (:foreground nil :weight normal :inherit outline-5))))
   `(gnus-group-news-2 ((t (:foreground nil :weight normal :inherit outline-6))))
   `(gnus-group-news-3 ((t (:foreground nil :weight normal :inherit outline-7))))
   `(gnus-group-news-4 ((t (:foreground nil :weight normal :inherit outline-8))))
   `(gnus-group-news-5 ((t (:foreground nil :weight normal :inherit outline-1))))
   `(gnus-group-news-6 ((t (:foreground nil :weight normal :inherit outline-2))))
   `(gnus-group-news-1-empty ((t (:inherit gnus-group-news-1 :foreground ,sacred-theme--doc))))
   `(gnus-group-news-2-empty ((t (:inherit gnus-group-news-2 :foreground ,sacred-theme--doc))))
   `(gnus-group-news-3-empty ((t (:inherit gnus-group-news-3 :foreground ,sacred-theme--doc))))
   `(gnus-group-news-4-empty ((t (:inherit gnus-group-news-4 :foreground ,sacred-theme--doc))))
   `(gnus-group-news-5-empty ((t (:inherit gnus-group-news-5 :foreground ,sacred-theme--doc))))
   `(gnus-group-news-6-empty ((t (:inherit gnus-group-news-6 :foreground ,sacred-theme--doc))))

   `(erc-direct-msg-face ((t (:foreground ,sacred-theme--keyword))))
   `(erc-error-face ((t (:foreground ,sacred-theme--keyword))))
   `(erc-header-face ((t (:foreground ,sacred-theme--added :background ,sacred-theme--doc))))
   `(erc-input-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(erc-keyword-face ((t (:foreground ,sacred-theme--link))))
   `(erc-current-nick-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(erc-my-nick-face ((t (:foreground ,sacred-theme--highlight-background))))
   `(erc-nick-default-face ((t (:weight normal :foreground ,sacred-theme--link))))
   `(erc-nick-msg-face ((t (:weight normal :foreground ,sacred-theme--link))))
   `(erc-notice-face ((t (:foreground ,sacred-theme--doc))))
   `(erc-pal-face ((t (:foreground ,sacred-theme--keyword))))
   `(erc-prompt-face ((t (:foreground ,sacred-theme--keyword))))
   `(erc-timestamp-face ((t (:foreground ,sacred-theme--keyword))))

   ;; eshell
   `(eshell-ls-archive ((t (:foreground ,sacred-theme--deemphasize :weight normal))))
   `(eshell-ls-backup ((t (:foreground ,sacred-theme--deemphasize))))
   `(eshell-ls-clutter ((t (:foreground ,sacred-theme--alert :weight normal))))
   `(eshell-ls-directory ((t (:foreground ,sacred-theme--link :weight normal))))
   `(eshell-ls-executable ((t (:foreground ,sacred-theme--text :weight normal))))
   `(eshell-ls-missing ((t (:foreground ,sacred-theme--alert :weight normal))))
   `(eshell-ls-product ((t (:foreground ,sacred-theme--alert))))
   `(eshell-ls-readonly ((t (:foreground ,sacred-theme--alert))))
   `(eshell-ls-special ((t (:foreground ,sacred-theme--alert :weight normal))))
   `(eshell-ls-symlink ((t (:foreground ,sacred-theme--link :weight normal))))
   `(eshell-ls-unreadable ((t (:foreground ,sacred-theme--deemphasize))))
   `(eshell-prompt ((t (:foreground ,sacred-theme--alert :weight normal))))

   ;; custom
   `(custom-variable-tag ((t (:foreground ,sacred-theme--keyword))))
   `(custom-group-tag ((t (:foreground ,sacred-theme--keyword))))
   `(custom-state ((t (:foreground ,sacred-theme--highlight-background))))
   `(custom-button-pressed-unraised ((t (:foreground ,sacred-theme--keyword))))
   `(custom-changed ((t (:background ,sacred-theme--added :foreground ,sacred-theme--inverted-text))))
   `(custom-comment ((t (:background ,sacred-theme--background :foreground ,sacred-theme--doc))))
   `(custom-group-tag-1 ((t (:background ,sacred-theme--background :foreground ,sacred-theme--link))))
   `(custom-invalid ((t (:background ,sacred-theme--alert :foreground ,sacred-theme--inverted-text))))
   `(custom-modified ((t (:background ,sacred-theme--added :foreground ,sacred-theme--inverted-text))))
   `(custom-link ((t (:background ,sacred-theme--background :foreground ,sacred-theme--link))))
   `(custom-rogue ((t (:background ,sacred-theme--background :foreground ,sacred-theme--alert))))
   `(custom-set ((t (:background ,sacred-theme--background :foreground ,sacred-theme--keyword))))
   `(custom-themed ((t (:background ,sacred-theme--background :foreground ,sacred-theme--keyword))))

   ;; diary
   `(diary ((t (:background ,sacred-theme--background :foreground ,sacred-theme--changed))))

   ;; epa
   `(epa-field-body ((t (:background ,sacred-theme--background :foreground ,sacred-theme--good))))
   `(epa-field-name ((t (:background ,sacred-theme--background :foreground ,sacred-theme--good))))
   `(epa-mark ((t (:background ,sacred-theme--background :foreground ,sacred-theme--link))))
   `(epa-string ((t (:background ,sacred-theme--background :foreground ,sacred-theme--text))))
   `(epa-validity-disabled ((t (:background ,sacred-theme--background :foreground ,sacred-theme--alert))))
   `(epa-validity-high ((t (:background ,sacred-theme--background :foreground ,sacred-theme--good))))
   `(epa-validity-low ((t (:background ,sacred-theme--background :foreground ,sacred-theme--alert))))
   `(epa-validity-medium ((t (:background ,sacred-theme--background :foreground ,sacred-theme--changed))))

   ;; helm
   `(helm-M-x-key ((t (:background ,sacred-theme--background :foreground ,sacred-theme--text))))
   `(helm-action ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-bookmark-addressbook ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-bookmark-directory ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-bookmark-file ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-bookmark-file-not-found ((t (:foreground ,sacred-theme--alert :background ,sacred-theme--background))))
   `(helm-bookmark-gnus ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-bookmark-info ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-bookmark-man ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-bookmark-w3m ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-buffer-directory ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background :weight bold))))
   `(helm-buffer-file ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background :weight bold))))
   `(helm-buffer-not-saved ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-buffer-process ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-buffer-saved-out ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-buffer-size ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-buffer-archive ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-delete-async-message ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-candidate-number ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-candidate-number-suspended ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-ff-directory ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background :weight bold))))
   `(helm-ff-dotted-directory ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background :weight bold))))
   `(helm-ff-dotted-symlink-directory ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background :weight bold))))
   `(helm-ff-pipe ((t (:foreground ,sacred-theme--link :background ,sacred-theme--background :weight bold))))
   `(helm-ff-socket ((t (:foreground ,sacred-theme--link :background ,sacred-theme--background :weight bold))))
   `(helm-ff-suid ((t (:foreground ,sacred-theme--inverted-text :background ,sacred-theme--alert :weight bold))))
   `(helm-ff-denied ((t (:foreground ,sacred-theme--alert :background ,sacred-theme--background :weight bold))))
   `(helm-ff-executable ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-ff-file ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background :weight bold))))
   `(helm-ff-invalid-symlink ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-ff-prefix ((t (:foreground nil :background nil))))
   `(helm-ff-symlink ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-grep-cmd-line ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-grep-file ((t (:inverse t :foreground ,sacred-theme--text :background ,sacred-theme--background :weight bold))))
   `(helm-grep-finish ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-grep-lineno ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-grep-match ((t (:foreground ,sacred-theme--highlight-foreground :background ,sacred-theme--background :weight bold))))
   `(helm-header ((t (:background ,sacred-theme--background :foreground ,sacred-theme--text :height 0.75))))
   `(helm-header-line-left-margin ((t (:background ,sacred-theme--background :foreground ,sacred-theme--text :height 0.75))))
   `(helm-history-deleted ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-history-remote ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-lisp-completion-info ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-locate-finish ((t (:foreground ,sacred-theme--good :background ,sacred-theme--background))))
   `(helm-mode-prefix ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-non-file-buffer ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-prefarg ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-resume-need-update ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(helm-match ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--text :weight bold :weight bold))))
   `(helm-moccur-buffer ((t (:foreground ,sacred-theme--text, :background ,sacred-theme--background))))
   `(helm-selection ((t (:background ,sacred-theme--text :foreground ,sacred-theme--background :weight bold :height 1.0))))
   `(helm-selection-line ((t (:background ,sacred-theme--highlight-background :foreground ,sacred-theme--text :weight bold :height 1.0))))
   `(helm-separator ((t (:foreground ,sacred-theme--text))))
   `(helm-source-header ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background :weight bold :underline t))))
   `(helm-visible-mark ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))

   ;;  lsp
   `(lsp-ui-sideline-code-action ((t (:foreground ,sacred-theme--highlight-background))))
   `(lsp-ui-doc-header ((t (:foreground ,sacred-theme--good :background ,sacred-theme--background))))
   `(lsp-ui-peek-filename ((t (:foreground ,sacred-theme--alert))))
   `(lsp-ui-peek-header ((t (:foreground ,sacred-theme--keyword :background ,sacred-theme--background))))
   `(lsp-ui-peek-highlight ((t (:inverse-video t :foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(lsp-ui-peek-line-number ((t (:foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(lsp-ui-peek-list ((t (:inverse-video t :foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(lsp-ui-peek-peek ((t (:inverse-video t :foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(lsp-ui-peek-selection ((t (:inverse-video t :foreground ,sacred-theme--text :background ,sacred-theme--background))))
   `(lsp-ui-sideline-code-action ((t (:foreground ,sacred-theme--deemphasize))))
   `(lsp-ui-sideline-current-symbol ((t (:foreground ,sacred-theme--deemphasize :height 0.99 :weight black :box (:box (:line-width -1 :color ,sacred-theme--keyword))))))
   `(lsp-ui-sideline-symbol ((t (:foreground ,sacred-theme--deemphasize :height 0.99 :weight black :box (:box (:line-width -1 :color ,sacred-theme--keyword))))))
   `(lsp-ui-sideline-symbol-info ((t (:height 0.99 :slant italic)))))

  (custom-theme-set-variables
   theme-name
   `(ansi-color-names-vector
     ;; black, keyword, highlight, link, keyword, magenta, cyan, white
     [,sacred-theme--text ,sacred-theme--keyword ,sacred-theme--highlight-foreground ,sacred-theme--link ,sacred-theme--keyword ,sacred-theme--link ,sacred-theme--keyword ,sacred-theme--added])
   `(ansi-term-color-vector
     ;; black, keyword, highlight, link, keyword, magenta, cyan, white
     [,sacred-theme--text ,sacred-theme--keyword ,sacred-theme--highlight-foreground ,sacred-theme--link ,sacred-theme--keyword ,sacred-theme--link ,sacred-theme--keyword ,sacred-theme--added])))

(defun sacred-theme-forest ()
  "Enable the sacred-forest theme."
  (interactive)
  (load-theme 'sacredforest t))

(defun sacred-theme-paper ()
  "Enable the sacred-paper theme."
  (interactive)
  (load-theme 'sacredpaper t))

(provide 'sacred-theme)

;;; sacred-theme.el ends here
