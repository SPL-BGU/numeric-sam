(define (problem instance_692)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 207) (= (count_log_in_inventory) 2) (= (count_planks_in_inventory) 1) (= (count_stick_in_inventory) 0) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)