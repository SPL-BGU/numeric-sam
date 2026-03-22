(define (problem instance_219)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 75) (= (count_log_in_inventory) 30) (= (count_planks_in_inventory) 4) (= (count_stick_in_inventory) 20) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)