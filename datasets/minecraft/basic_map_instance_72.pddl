(define (problem instance_72)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 49) (= (count_log_in_inventory) 36) (= (count_planks_in_inventory) 13) (= (count_stick_in_inventory) 43) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)