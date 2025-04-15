;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5_2)
	(:domain farmland)
	(:objects
		farm0  farm1  farm2  farm3  farm4  - farm
	)
  (:init
        (= (cost) 0)
		(= (x farm0) 0)
		(= (x farm1) 0)
		(= (x farm2) 2)
		(= (x farm3) 0)
		(= (x farm4) 0)
		
		(adj farm0 farm1)
		(adj farm0 farm2)
		(adj farm0 farm3)
		(adj farm0 farm4)
		(adj farm1 farm0)
		(adj farm2 farm0)
		(adj farm3 farm0)
		(adj farm4 farm0)
		
	)
	(:goal
		(and
			(>= (x farm0) 1)
			(>= (x farm1) 1)
			(>= (x farm2) 1)
			(>= (x farm3) 1)
			(>= (x farm4) 1)
			
			(>= (+ (* 1.9 (x farm0))(+ (* 1.5 (x farm1))(+ (* 1.0 (x farm2))(+ (* 1.7 (x farm3))(+ (* 1.6 (x farm4)) 0))))) 2.8)
		)
	)
)

