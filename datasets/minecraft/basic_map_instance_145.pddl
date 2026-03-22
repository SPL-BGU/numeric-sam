(define (problem instance_145)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 60) (= (count_log_in_inventory) 21) (= (count_planks_in_inventory) 28) (= (count_stick_in_inventory) 58) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)