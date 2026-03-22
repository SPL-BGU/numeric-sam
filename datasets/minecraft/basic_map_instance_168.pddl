(define (problem instance_168)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 25) (= (count_log_in_inventory) 6) (= (count_planks_in_inventory) 32) (= (count_stick_in_inventory) 64) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)