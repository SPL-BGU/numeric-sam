(define (problem instance_365)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 161) (= (count_log_in_inventory) 23) (= (count_planks_in_inventory) 32) (= (count_stick_in_inventory) 29) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)