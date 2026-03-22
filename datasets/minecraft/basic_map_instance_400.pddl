(define (problem instance_400)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 206) (= (count_log_in_inventory) 9) (= (count_planks_in_inventory) 1) (= (count_stick_in_inventory) 5) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)