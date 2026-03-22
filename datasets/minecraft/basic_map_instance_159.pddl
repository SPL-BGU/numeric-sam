(define (problem instance_159)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 72) (= (count_log_in_inventory) 45) (= (count_planks_in_inventory) 0) (= (count_stick_in_inventory) 13) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)