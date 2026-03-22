(define (problem instance_116)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 200) (= (count_log_in_inventory) 53) (= (count_planks_in_inventory) 50) (= (count_stick_in_inventory) 5) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)