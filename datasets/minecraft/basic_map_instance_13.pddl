(define (problem instance_13)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 46) (= (count_log_in_inventory) 63) (= (count_planks_in_inventory) 47) (= (count_stick_in_inventory) 62) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)