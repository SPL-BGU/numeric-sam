(define (problem instance_44)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 205) (= (count_log_in_inventory) 57) (= (count_planks_in_inventory) 54) (= (count_stick_in_inventory) 49) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)