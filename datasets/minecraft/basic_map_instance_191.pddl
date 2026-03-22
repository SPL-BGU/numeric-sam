(define (problem instance_191)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 199) (= (count_log_in_inventory) 19) (= (count_planks_in_inventory) 42) (= (count_stick_in_inventory) 44) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)