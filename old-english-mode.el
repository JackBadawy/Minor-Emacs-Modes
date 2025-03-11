;;; old-english-mode.el --- Minor mode for inserting Old English characters

;;; Commentary:

;; This package provides a minor mode for easily inserting Old English
;; characters using keyboard shortcuts.  When enabled, the following
;; shortcuts are available:
;;
;; M-t = þ (thorn)
;; M-e = ð (eth)
;; M-w = ƿ (wynn)
;; M-a = æ (ash)
;;
;; Uppercase variants are available by using the Shift key:
;; M-T = Þ (capital thorn)
;; M-E = Ð (capital eth)
;; M-W = Ƿ (capital wynn)
;; M-A = Æ (capital ash)

;;; Code:

(defgroup old-english nil
  "Support for inserting Old English characters."
  :group 'convenience
  :prefix "old-english-")

(defvar old-english-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "M-t") 'old-english-insert-thorn)
    (define-key map (kbd "M-T") 'old-english-insert-thorn-capital)
    (define-key map (kbd "M-e") 'old-english-insert-eth)
    (define-key map (kbd "M-E") 'old-english-insert-eth-capital)
    (define-key map (kbd "M-w") 'old-english-insert-wynn)
    (define-key map (kbd "M-W") 'old-english-insert-wynn-capital)
    (define-key map (kbd "M-a") 'old-english-insert-ash)
    (define-key map (kbd "M-A") 'old-english-insert-ash-capital)
    map)
  "Keymap for `old-english-mode'.")

(defun old-english-insert-thorn ()
  "Insert þ (thorn) at point."
  (interactive)
  (insert "þ"))

(defun old-english-insert-thorn-capital ()
  "Insert Þ (capital thorn) at point."
  (interactive)
  (insert "Þ"))

(defun old-english-insert-eth ()
  "Insert ð (eth) at point."
  (interactive)
  (insert "ð"))

(defun old-english-insert-eth-capital ()
  "Insert Ð (capital eth) at point."
  (interactive)
  (insert "Ð"))

(defun old-english-insert-wynn ()
  "Insert ƿ (wynn) at point."
  (interactive)
  (insert "ƿ"))

(defun old-english-insert-wynn-capital ()
  "Insert Ƿ (capital wynn) at point."
  (interactive)
  (insert "Ƿ"))

(defun old-english-insert-ash ()
  "Insert æ (ash) at point."
  (interactive)
  (insert "æ"))

(defun old-english-insert-ash-capital ()
  "Insert Æ (capital ash) at point."
  (interactive)
  (insert "Æ"))

;;;###autoload
(define-minor-mode old-english-mode
  "Toggle Old English mode.
With a prefix argument ARG, enable Old English mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil.

When Old English mode is enabled, the following shortcuts are available:
M-t = þ (thorn)
M-e = ð (eth)
M-w = ƿ (wynn)
M-a = æ (ash)

Uppercase variants are available by using the Shift key."
  :init-value nil
  :lighter " OldE"
  :keymap old-english-mode-map
  :global nil
  :group 'old-english)

;;;###autoload
(define-globalized-minor-mode global-old-english-mode
  old-english-mode
  (lambda () (old-english-mode 1))
  :group 'old-english)

(provide 'old-english-mode)
;;; old-english-mode.el ends here
