(define (problem instance_166)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 198) (= (count_log_in_inventory) 64) (= (count_planks_in_inventory) 51) (= (count_stick_in_inventory) 64) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)