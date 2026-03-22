(define (problem instance_67)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 198) (= (count_log_in_inventory) 41) (= (count_planks_in_inventory) 62) (= (count_stick_in_inventory) 4) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)