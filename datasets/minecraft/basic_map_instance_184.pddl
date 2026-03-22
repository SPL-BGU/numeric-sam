(define (problem instance_184)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 115) (= (count_log_in_inventory) 13) (= (count_planks_in_inventory) 32) (= (count_stick_in_inventory) 3) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)