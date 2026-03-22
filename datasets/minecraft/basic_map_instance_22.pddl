(define (problem instance_22)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 150) (= (count_log_in_inventory) 51) (= (count_planks_in_inventory) 48) (= (count_stick_in_inventory) 17) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)