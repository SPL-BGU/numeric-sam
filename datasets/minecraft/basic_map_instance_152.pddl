(define (problem instance_152)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 211) (= (count_log_in_inventory) 46) (= (count_planks_in_inventory) 16) (= (count_stick_in_inventory) 4) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)