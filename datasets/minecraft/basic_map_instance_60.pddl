(define (problem instance_60)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 204) (= (count_log_in_inventory) 28) (= (count_planks_in_inventory) 39) (= (count_stick_in_inventory) 59) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)