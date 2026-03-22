(define (problem instance_31)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 113) (= (count_log_in_inventory) 45) (= (count_planks_in_inventory) 63) (= (count_stick_in_inventory) 63) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)