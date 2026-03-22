(define (problem instance_23)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 10) (= (count_log_in_inventory) 18) (= (count_planks_in_inventory) 44) (= (count_stick_in_inventory) 3) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)