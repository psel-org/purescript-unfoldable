;; -*- lexical-binding: t; -*-

(defvar Data.Unfoldable1.unfoldr1ArrayImpl
  (lambda (isNothing)
    (lambda (fromJust)
      (lambda (fst)
        (lambda (snd)
          (lambda (f)
            (lambda (b)
              (let* ((value b)
                     (tuple (funcall f value))
                     (acc (list (funcall fst tuple)))
                     (maybe (funcall snd tuple)))
                (while (not (funcall isNothing maybe))
                  (setq value (funcall fromJust maybe))
                  (setq tuple (funcall f value))
                  (setq acc (cons (funcall fst tuple) acc))
                  (setq maybe (funcall snd tuple)))
                (apply 'vector (reverse acc))))))))))
