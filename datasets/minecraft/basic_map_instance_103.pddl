(define (problem instance_103)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 101) (= (count_log_in_inventory) 49) (= (count_planks_in_inventory) 36) (= (count_stick_in_inventory) 49) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)