(define (problem instance_164)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 8) (= (count_log_in_inventory) 27) (= (count_planks_in_inventory) 1) (= (count_stick_in_inventory) 18) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)