(define (problem instance_71)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 201) (= (count_log_in_inventory) 18) (= (count_planks_in_inventory) 35) (= (count_stick_in_inventory) 41) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)