(define (problem instance_551)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 97) (= (count_log_in_inventory) 8) (= (count_planks_in_inventory) 16) (= (count_stick_in_inventory) 4) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)