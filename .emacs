; Schermata d'avvio Emacs nascosta 
(custom-set-variables '(inhibit-startup-screen t))
; Gnus all'avvio di Emacs
;(add-hook 'emacs-startup-hook 'gnus t)
; Numero riga
(global-linum-mode t)
; Tasti copia taglia incolla classici
(cua-mode t)
; Barra degli strumenti nascosta
(tool-bar-mode -1)
; Finesta Emacs massimizzata all'avvio
(add-to-list 'default-frame-alist '(fullscreen . maximized))
; Correttore ortogafico in modalità Tex (dipende da aspell-it)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
; Correttore ortogafico in modalità Org (dipende da aspell-it)
(add-hook 'org-mode-hook 'flyspell-mode)
; Menu Math in modalità Tex (dipende da auctex)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
; Pacchetto per l'anteprima Tex e configurazione
(add-to-list 'load-path "/home/mg/.emacs.d/lisp/latex-preview-pane")
(require 'latex-preview-pane)
(add-hook 'LaTeX-mode-hook 'latex-preview-pane-mode)
; Righe di testo non superano gli 80 caratteri in modalità testo e Org
; (setq-default fill-column 80)
; (add-hook 'text-mode-hook 'turn-on-auto-fill)
; (add-hook 'org-mode-hook 'turn-on-auto-fill)
; Righe di testo vanno a capo alla fine della finestra in modalità Org
(setq org-startup-truncated nil)
; Scratch buffer in modalità testo
(setq initial-major-mode 'text-mode)
; Scratch buffer vuoto
(setq initial-scratch-message nil)
; Numero colonna
(setq column-number-mode t)
; Righe di testo superano gli 80 caratteri in modalità Tex
; (add-hook 'LaTeX-mode-hook 'turn-off-auto-fill)
; Doc-view in modalità continuous 
(setq doc-view-continuous t)
