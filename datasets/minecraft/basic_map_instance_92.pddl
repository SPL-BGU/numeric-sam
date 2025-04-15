(define (problem instance_92)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 168) (= (count_log_in_inventory) 34) (= (count_planks_in_inventory) 5) (= (count_stick_in_inventory) 42) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)