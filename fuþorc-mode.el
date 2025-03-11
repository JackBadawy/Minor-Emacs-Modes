;;; futhorc-mode.el --- Minor mode for inserting Anglo-Saxon Futhorc runes



;;; Commentary:

;; This package provides a minor mode for easily inserting Anglo-Saxon
;; Futhorc runes using keyboard shortcuts.
;;
;; When enabled, the following shortcuts are available:
;;
;; M-f = ᚠ (feoh, wealth)
;; M-u = ᚢ (ur, aurochs)
;; M-t = ᚦ (thorn, thorn)
;; M-o = ᚩ (os, god)
;; M-r = ᚱ (rad, riding)
;; M-c = ᚳ (cen, torch)
;; M-g = ᚷ (gyfu, gift)
;; M-w = ᚹ (wynn, joy)
;; M-h = ᚻ (haegl, hail)
;; M-n = ᚾ (nyd, need)
;; M-i = ᛁ (is, ice)
;; M-j = ᛄ (ger, year)
;; M-1 = ᛇ (eoh, yew)
;; M-p = ᛈ (peorth, dice-cup)
;; M-x = ᛉ (eolhx, elk-sedge)
;; M-s = ᛋ (sigel, sun)
;; M-2 = ᛏ (tir, glory)
;; M-b = ᛒ (beorc, birch)
;; M-e = ᛖ (eh, horse)
;; M-m = ᛗ (mann, man)
;; M-l = ᛚ (lagu, lake)
;; M-3 = ᛝ (ing, hero)
;; M-4 = ᛟ (ethel, estate)
;; M-d = ᛞ (daeg, day)
;; M-5 = ᚪ (ac, oak)
;; M-a = ᚫ (aesc, ash)
;; M-y = ᚣ (yr, bow)
;; M-6 = ᛠ (ear, grave)
;; M-k = ᛣ (cweorth, fire)
;; M-7 = ᛥ (stan, stone)
;; M-8 = ᚸ (gar, spear)

;;; Code:

(defgroup futhorc nil
  "Support for inserting Futhorc runes."
  :group 'convenience
  :prefix "futhorc-")

(defvar futhorc-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "M-f") 'futhorc-insert-feoh)
    (define-key map (kbd "M-u") 'futhorc-insert-ur)
    (define-key map (kbd "M-t") 'futhorc-insert-thorn)
    (define-key map (kbd "M-o") 'futhorc-insert-os)
    (define-key map (kbd "M-r") 'futhorc-insert-rad)
    (define-key map (kbd "M-c") 'futhorc-insert-cen)
    (define-key map (kbd "M-g") 'futhorc-insert-gyfu)
    (define-key map (kbd "M-w") 'futhorc-insert-wynn)
    (define-key map (kbd "M-h") 'futhorc-insert-haegl)
    (define-key map (kbd "M-n") 'futhorc-insert-nyd)
    (define-key map (kbd "M-i") 'futhorc-insert-is)
    (define-key map (kbd "M-j") 'futhorc-insert-ger)
    (define-key map (kbd "M-1") 'futhorc-insert-eoh)
    (define-key map (kbd "M-p") 'futhorc-insert-peorth)
    (define-key map (kbd "M-x") 'futhorc-insert-eolhx)
    (define-key map (kbd "M-s") 'futhorc-insert-sigel)
    (define-key map (kbd "M-2") 'futhorc-insert-tir)
    (define-key map (kbd "M-b") 'futhorc-insert-beorc)
    (define-key map (kbd "M-e") 'futhorc-insert-eh)
    (define-key map (kbd "M-m") 'futhorc-insert-mann)
    (define-key map (kbd "M-l") 'futhorc-insert-lagu)
    (define-key map (kbd "M-3") 'futhorc-insert-ing)
    (define-key map (kbd "M-4") 'futhorc-insert-ethel)
    (define-key map (kbd "M-d") 'futhorc-insert-daeg)
    (define-key map (kbd "M-5") 'futhorc-insert-ac)
    (define-key map (kbd "M-a") 'futhorc-insert-aesc)
    (define-key map (kbd "M-y") 'futhorc-insert-yr)
    (define-key map (kbd "M-6") 'futhorc-insert-ear)
    (define-key map (kbd "M-k") 'futhorc-insert-cweorth)
    (define-key map (kbd "M-7") 'futhorc-insert-stan)
    (define-key map (kbd "M-8") 'futhorc-insert-gar)
    map)
  "Keymap for `futhorc-mode'.")

(defun futhorc-insert-feoh ()
  "Insert ᚠ (feoh, wealth) at point."
  (interactive)
  (insert "ᚠ"))

(defun futhorc-insert-ur ()
  "Insert ᚢ (ur, aurochs) at point."
  (interactive)
  (insert "ᚢ"))

(defun futhorc-insert-thorn ()
  "Insert ᚦ (thorn, thorn) at point."
  (interactive)
  (insert "ᚦ"))

(defun futhorc-insert-os ()
  "Insert ᚩ (os, god) at point."
  (interactive)
  (insert "ᚩ"))

(defun futhorc-insert-rad ()
  "Insert ᚱ (rad, riding) at point."
  (interactive)
  (insert "ᚱ"))

(defun futhorc-insert-cen ()
  "Insert ᚳ (cen, torch) at point."
  (interactive)
  (insert "ᚳ"))

(defun futhorc-insert-gyfu ()
  "Insert ᚷ (gyfu, gift) at point."
  (interactive)
  (insert "ᚷ"))

(defun futhorc-insert-wynn ()
  "Insert ᚹ (wynn, joy) at point."
  (interactive)
  (insert "ᚹ"))

(defun futhorc-insert-haegl ()
  "Insert ᚻ (haegl, hail) at point."
  (interactive)
  (insert "ᚻ"))

(defun futhorc-insert-nyd ()
  "Insert ᚾ (nyd, need) at point."
  (interactive)
  (insert "ᚾ"))

(defun futhorc-insert-is ()
  "Insert ᛁ (is, ice) at point."
  (interactive)
  (insert "ᛁ"))

(defun futhorc-insert-ger ()
  "Insert ᛄ (ger, year) at point."
  (interactive)
  (insert "ᛄ"))

(defun futhorc-insert-eoh ()
  "Insert ᛇ (eoh, yew) at point."
  (interactive)
  (insert "ᛇ"))

(defun futhorc-insert-peorth ()
  "Insert ᛈ (peorth, dice-cup) at point."
  (interactive)
  (insert "ᛈ"))

(defun futhorc-insert-eolhx ()
  "Insert ᛉ (eolhx, elk-sedge) at point."
  (interactive)
  (insert "ᛉ"))

(defun futhorc-insert-sigel ()
  "Insert ᛋ (sigel, sun) at point."
  (interactive)
  (insert "ᛋ"))

(defun futhorc-insert-tir ()
  "Insert ᛏ (tir, glory) at point."
  (interactive)
  (insert "ᛏ"))

(defun futhorc-insert-beorc ()
  "Insert ᛒ (beorc, birch) at point."
  (interactive)
  (insert "ᛒ"))

(defun futhorc-insert-eh ()
  "Insert ᛖ (eh, horse) at point."
  (interactive)
  (insert "ᛖ"))

(defun futhorc-insert-mann ()
  "Insert ᛗ (mann, man) at point."
  (interactive)
  (insert "ᛗ"))

(defun futhorc-insert-lagu ()
  "Insert ᛚ (lagu, lake) at point."
  (interactive)
  (insert "ᛚ"))

(defun futhorc-insert-ing ()
  "Insert ᛝ (ing, hero) at point."
  (interactive)
  (insert "ᛝ"))

(defun futhorc-insert-ethel ()
  "Insert ᛟ (ethel, estate) at point."
  (interactive)
  (insert "ᛟ"))

(defun futhorc-insert-daeg ()
  "Insert ᛞ (daeg, day) at point."
  (interactive)
  (insert "ᛞ"))

(defun futhorc-insert-ac ()
  "Insert ᚪ (ac, oak) at point."
  (interactive)
  (insert "ᚪ"))

(defun futhorc-insert-aesc ()
  "Insert ᚫ (aesc, ash) at point."
  (interactive)
  (insert "ᚫ"))

(defun futhorc-insert-yr ()
  "Insert ᚣ (yr, bow) at point."
  (interactive)
  (insert "ᚣ"))

(defun futhorc-insert-ear ()
  "Insert ᛠ (ear, grave) at point."
  (interactive)
  (insert "ᛠ"))

(defun futhorc-insert-cweorth ()
  "Insert ᛣ (cweorth, fire) at point."
  (interactive)
  (insert "ᛣ"))

(defun futhorc-insert-stan ()
  "Insert ᛥ (stan, stone) at point."
  (interactive)
  (insert "ᛥ"))

(defun futhorc-insert-gar ()
  "Insert ᚸ (gar, spear) at point."
  (interactive)
  (insert "ᚸ"))

;;;###autoload
(define-minor-mode futhorc-mode
  "Toggle Futhorc mode.
With a prefix argument ARG, enable Futhorc mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil.

When Futhorc mode is enabled, you can insert Anglo-Saxon runes
using M-key shortcuts."
  :init-value nil
  :lighter " ᚠᚢᚦ"
  :keymap futhorc-mode-map
  :global nil
  :group 'futhorc)

;;;###autoload
(define-globalized-minor-mode global-futhorc-mode
  futhorc-mode
  (lambda () (futhorc-mode 1))
  :group 'futhorc)

(provide 'fuþorc-mode)
;;; fuþorc-mode.el ends here
