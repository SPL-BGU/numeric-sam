(define (problem instance_6)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 64) (= (count_log_in_inventory) 58) (= (count_planks_in_inventory) 61) (= (count_stick_in_inventory) 18) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)