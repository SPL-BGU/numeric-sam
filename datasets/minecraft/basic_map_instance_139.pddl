(define (problem instance_139)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 202) (= (count_log_in_inventory) 40) (= (count_planks_in_inventory) 14) (= (count_stick_in_inventory) 40) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)