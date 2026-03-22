(define (problem instance_84)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 77) (= (count_log_in_inventory) 63) (= (count_planks_in_inventory) 41) (= (count_stick_in_inventory) 2) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)