(define (problem instance_34)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 205) (= (count_log_in_inventory) 10) (= (count_planks_in_inventory) 33) (= (count_stick_in_inventory) 26) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)