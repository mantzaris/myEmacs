
(defvar dangermode-timer nil)
(defvar dangermode-step 0)
(defvar dangermode-max-steps 80) ; Number of steps for the transition
(defvar dangermode-direction 1)  ; 1 for increasing red, -1 for decreasing

(defun dangermode-update-color ()
  "Change the background color gradually from black to red and then from red to black."
  (let ((red-value (* 255 (/ dangermode-step (float dangermode-max-steps)))))
    (set-background-color (format "#%02X0000" (round red-value)))
    (setq dangermode-step (+ dangermode-step dangermode-direction))
    (when (or (>= dangermode-step dangermode-max-steps) (<= dangermode-step 0))
      (setq dangermode-direction (- dangermode-direction))))) ; Reverse direction

(defun dangermode-on ()
  "Activate dangermode."
  (interactive)
  (unless dangermode-timer
    (setq dangermode-step 0)
    (setq dangermode-direction 1)
    (setq dangermode-timer (run-with-timer 0 0.25 'dangermode-update-color))))

(defun dangermode-off ()
  "Deactivate dangermode."
  (interactive)
  (when dangermode-timer
    (cancel-timer dangermode-timer)
    (setq dangermode-timer nil)
    (set-background-color "black")))
