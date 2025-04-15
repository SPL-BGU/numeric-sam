;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2_2)
	(:domain farmland)
	(:objects
		farm0  farm1  - farm
	)
  (:init
        (= (cost) 0)
		(= (x farm0) 2)
		(= (x farm1) 1)
		
		(adj farm0 farm1)
		(adj farm1 farm0)
		
	)
	(:goal
		(and
			(>= (x farm0) 1)
			(>= (x farm1) 1)
			
			(>= (+ (* 1.0 (x farm0))(+ (* 1.4 (x farm1)) 0)) 2.8)
		)
	)
)

