(define (problem instance_360)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 139) (= (count_log_in_inventory) 12) (= (count_planks_in_inventory) 10) (= (count_stick_in_inventory) 23) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)