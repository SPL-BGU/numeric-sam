(define (problem instance_74)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 113) (= (count_log_in_inventory) 5) (= (count_planks_in_inventory) 40) (= (count_stick_in_inventory) 62) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)