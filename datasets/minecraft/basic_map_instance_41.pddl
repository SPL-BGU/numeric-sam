(define (problem instance_41)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 82) (= (count_log_in_inventory) 4) (= (count_planks_in_inventory) 49) (= (count_stick_in_inventory) 57) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)