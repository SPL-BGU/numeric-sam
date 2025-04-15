(define (problem instance_98)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 101) (= (count_log_in_inventory) 36) (= (count_planks_in_inventory) 56) (= (count_stick_in_inventory) 58) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)