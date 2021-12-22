;; -*- lexical-binding: t; -*-

(defvar Data.Unfoldable.unfoldrArrayImpl
  (lambda (isNothing)
    (lambda (fromJust)
      (lambda (fst)
        (lambda (snd)
          (lambda (f)
            (lambda (b)
              (let* ((acc '())
                     (value b)
                     (maybe (funcall f value)))
                (while (not (funcall isNothing maybe))
                  (let ((tuple (funcall fromJust maybe)))
                    (setq acc (cons (funcall fst tuple) acc))
                    (setq value (funcall snd tuple))
                    (setq maybe (funcall f value))))
                (apply 'vector (reverse acc))))))))))
