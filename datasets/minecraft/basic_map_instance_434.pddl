(define (problem instance_434)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 188) (= (count_log_in_inventory) 14) (= (count_planks_in_inventory) 16) (= (count_stick_in_inventory) 15) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)