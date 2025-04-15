(define (problem instance_94)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 146) (= (count_log_in_inventory) 48) (= (count_planks_in_inventory) 46) (= (count_stick_in_inventory) 31) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)