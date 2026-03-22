(define (problem instance_19)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 208) (= (count_log_in_inventory) 40) (= (count_planks_in_inventory) 20) (= (count_stick_in_inventory) 11) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)