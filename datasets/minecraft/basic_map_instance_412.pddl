(define (problem instance_412)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 86) (= (count_log_in_inventory) 15) (= (count_planks_in_inventory) 13) (= (count_stick_in_inventory) 6) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)