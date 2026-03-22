(define (problem instance_51)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 96) (= (count_log_in_inventory) 60) (= (count_planks_in_inventory) 11) (= (count_stick_in_inventory) 27) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)